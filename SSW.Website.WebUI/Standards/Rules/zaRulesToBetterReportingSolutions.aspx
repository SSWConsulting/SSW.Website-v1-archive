<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Rules to Better Reporting Solutions" %>
<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>
 
<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath></p>
    
	<ssw:RandomTestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />

    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F2532304265747465722532305265706F7274696E67253230536F6C7574696F6E73')"> Let us know</a> what you think.</p> 

    <h2>Rules to Better Reporting Solutions</h2>
    <div>
        <ol>
                <li><a href="#UseTheBestTools">Do you know the best tools for presenting reports to users?</a></li>
                <li><a href="#ReportingServices">Reporting Services (Windows and Web)</a></li>
                <li><a href="#ASPNET">ASP.NET (Web)</a></li>
                <li><a href="#Kendo-UI">Kendo UI</a></li>
                <li><a href="#Power-View">Power View</a></li>
                <li><a href="#PowerPivot">PowerPivot</a></li>
                <li><a href="#Excel">Excel 2007/2010/2013 Data Visualization with SharePoint 2007/2010/2013 Excel Services</a></li>
                <li><a href="#PerformancePoint">PerformancePoint 2010/2013</a></li>
                <li><a href="#Crystal">Crystal (Windows and Web)</a></li>
                <li><a href="#ActiveReports">DataDynamics Active Reports (Windows and Web)</a></li>
                <li><a href="#XMLXSL">XML/XSL (Windows and Web)</a></li>
                <li><a href="#Access">Access (Windows and Web via SSW Access Reporter for IIS)</a> </li>
                <li><a href="#OWC">Outlook Web Components (OWC)</a></li>
                <li><a href="#DataAnalyzer">OLAP - Data Analyzer (aka Microsoft's Rich Client  Solution)</a></li>
                <li><a href="#OLAP3rdParty">OLAP - 3rd Party</a></li>
            </ol>
    </div>
    <ol>
        <li>
        <h2><a name="UseTheBestTools"></a>Do you use the best tools to present Reports to users?</h2>
            <p>There are many ways to present your data to users over the Web. In general, most reporting needs can be grouped into the following 2 categories:</p>
            <ol>
                <li><strong>Detail Reports - </strong>Printable reports that show detailed information for each row in the database. (e.g. an Invoice)</li>
                <li><strong>Summary Reports - </strong>Business Intelligence Reports that group and summarize data into counts and sums of individual rows (e.g. a Monthly sales with a chart). Typically, OLAP oriented tools MS Excel in this area.</li>
            </ol>

            <p>The obvious choices for displaying this data are <strong>SQL Reporting Services 2012</strong>, <strong>ASP.NET 4.5</strong>,and <s>Crystal Reports</s>. Let's take a  look at how easy it is to complete this report using these and other solutions.</p>

            <p>Below is a guide on the best options available for the Microsoft platform, with Pros and Cons for each.</p>

        <h3>The scenario</h3>
            <p>Scenario: I want my customers and staff to be able to see this data in a useful format. What are my options?</p>
            <p><strong>Start Date: 1/1/2014<br />
            End Date: 1/4/2014</strong></p>

            <table class="clsSSWTable" border="0" cellpadding="0" cellspacing="0" width="70%"
                id="table1" onclick="return table1_onclick()">
                <colgroup>
                    <col width="178" style="width: 134pt" />
                    <col width="64" style="width: 48pt" />
                </colgroup>
                <tr height="17">
                    <td height="17" width="537">
                        <b>Product</b></td>
                    <td align="right" width="136" x:num>
                        <b>Downloads</b></td>
                </tr>
                <tr height="17">
                    <td height="17" width="537">
                        SSW Upsizing PRO!</td>
                    <td align="right" width="136" x:num>
                        181</td>
                </tr>
                <tr height="17">
                    <td width="537" style="height: 17px">
                        SSW Code Auditor</td>
                    <td align="right" x:num width="136" style="height: 17px">
                        114</td>
                </tr>
                <tr height="17">
                    <td width="537" style="height: 17px">
                        SSW .NET Toolkit</td>
                    <td align="right" x:num width="136" style="height: 17px">
                        63</td>
                </tr>
                <tr height="17">
                    <td height="17" width="537">
                        SSW Performance PRO! (for Access 2000,2002,2003)</td>
                    <td align="right" x:num width="136">
                        60</td>
                </tr>
                <tr height="17">
                    <td height="17" width="537">
                        SSW Exchange Reporter</td>
                    <td align="right" x:num width="136">
                        58</td>
                </tr>
                <tr height="17">
                    <td height="17" width="537">
                        SSW Exchange Team Calendar (for Exchange Server 2000,2003)</td>
                    <td align="right" x:num width="136">
                        53</td>
                </tr>
                <tr height="17">
                    <td height="17" width="537">
                        SSW Diagnostics</td>
                    <td align="right" x:num width="136">
                        49</td>
                </tr>
                <tr height="17">
                    <td height="17" width="537">
                        SSW SQL Total Compare</td>
                    <td align="right" x:num width="136">
                        49</td>
                </tr>
                <tr height="17">
                    <td height="17" width="537">
                        SSW SQL Auditor</td>
                    <td align="right" x:num width="136">
                        39</td>
                </tr>
                <tr height="17">
                    <td height="17" width="537">
                        SSW Access Reporter .NET For IIS</td>
                    <td align="right" x:num width="136">
                        34</td>
                </tr>
                <tr height="17">
                    <td height="17" width="537">
                        SSW SQL Deploy</td>
                    <td align="right" x:num width="136">
                        33</td>
                </tr>
                <tr height="17">
                    <td height="17" width="537">
                        SSW eXtreme Emails!</td>
                    <td align="right" x:num width="136">
                        31</td>
                </tr>
                <tr height="17">
                    <td width="537" align="right" style="height: 17px">
                        <strong>Total</strong></td>
                    <td align="right" x:num width="136" style="height: 17px">
                        <strong>764</strong></td>
                </tr>
            </table>

            <h3>Conclusion<a name="Conclusion"></a></h3>
                            <p><strong>For building reports, the most critical factors for a power user are:</strong>
                            </p>
                                <ol>
                                    <li>Development time</li>
                                    <li>Having the ability to put the reports on the web and having them to work on your iPad too (without installing an app)</li>
                                    <li>Having drill down functionality (for summary reports)</li>
                                    <li>Having reports with a query string and the parameters on it (e.g. so that you can click a link in the email)</li>
                                    <li>Offline support (only if absolutely neccessary)</li>
                                </ol>
                           
                                <h2>Which solution should I use when doing detail type reports? (usually printable ones e.g. an Invoice)</h2>
                            <p>Because you can't control the report length and need strong layout control, a proper reporting solution is the best option. Hence Reporting Services and Crystal (although not naturally my second choice). But the fact is you just dont know if the report is going to be multiple pages so:
                            </p>
                            <ol>
                                <li>Web and Windows - SQL Reporting Services</li>
                            </ol>
                            <h2>Which solution should I use when doing summary type reports (usually business intelligence ones e.g. monthly sales with a chart)</h2>
                            <p>Below is a general guide as to the order we choose for summary reports&nbsp; (BTW - This list is not set in stone and we use all the below options for different clients):</p>
                                <ol>
                                    <li>Web and Windows - SQL Reporting Services</li>
                                    <li>Web - MVC and Kendo UI </li>
                                    <li>Windows - Excel</li>
                                </ol>

</li>
            
                <li>
                    <h2>
                        <a id="ReportingServices"></a>SQL Reporting Services 2012 (Web and Rich Client)</h2>
                    <p>SQL Reporting Services<br /><a href="http://msdn.microsoft.com/en-us/library/ms159106.aspx"> http://msdn.microsoft.com/en-us/library/ms159106.aspx </a></p>
                    <p><strong>Pros</strong></p>
                    <ol>
                        <li>Short development time - 3 hours for sample report.</li>
                        <li>No code.</li>
                        <li>You can export reports to a large number of different formats right out of the box (Excel, PDF, HTML, Word, Images).</li>
                        <li>You can schedule report execution and have your reports emailed automatically to you or a list of recipients (via Data-Driven Subscriptions).</li>
                        <li>Developers can create reports using Visual Studio Business Intelligence Development Studio</li>
                        <li>End Users can create ad-hoc reports using the Report Builder 3.0 click once application (same functionality as Visual Studio)</li>
                        <li>Parameters are easy to add to the report and bind to the data.</li>
                        <li>Grouping is simple.</li>
                        <li>Drill Down without needing a tree view control.</li>
                        <li>Built-in security module out of the box</li>
                        <li>Rich set of charting controls and geospatial controls</li>
                        <li>Reuse report parts in many reports</li>
                        <li>Client side reporting using RDLC</li>
                        <li>Can easily integrate into SharePoint to make publishing and sharing reports simple</li>                                                                                    
                    </ol>
                    <p><strong>Cons</strong></p>
                    <ol>
                       <li>Limited control set (although the controls are very rich). You are forced to use built-in controls. For example, you can't have "next month / previous month" hyperlinks like in ASP.NET (see below)</li>
                       <li>Query string doesn't change when you change the parameter values in a report. You have to re-submit the page (no AJAX)</li>
                       <li>Can't separate SQL into a strongly-typed dataset or middle-tier objects like in ASP.NET (unless you write a lot of code to support your own provider)</li>
                       <li>Difficult to integrate user input and dynamic behaviors like ad-hoc grouping</li>                                                                      
                    </ol>
                    <<dl class=" image">
                        <dt><img border="1" src="Images/RSReport.gif" width="516" height="786"></dt>
                        <dd>Figure: SQL Reporting Services 2012</dd></dl>
                    
                    <p>Note: When comparing two sets of values in a report, you should <a href="/ssw/Standards/Rules/RulesToBetterSQLReportingServices.aspx#ChangePercent"> avoid showing change as a percentage</a>
                    </p>

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
                        <b>Samples</b></p>
                    <p>
                        <a href="/ssw/exchangereporter/ReportSamples.aspx">
                            SSW Exchange Reporter (Samples)</a>
                    </p>
                    <%If Request.ServerVariables("HTTP_HOST") <> "www.ssw.com.au" And Request.ServerVariables("HTTP_HOST") <> "ssw.com.au" Then%>
                    <p>
                        <a class="Maintenance" href="http://reports.ssw.com.au/Reports/Pages/Report.aspx?ItemPath=%2fSSWTimePRO%2fSSWTimePROCompanyPerformance%2f008_ProductDownloads">
                            Internal</a></p>
                    <%End If%>
                    <p>
                        Note: When comparing two sets of values in a report, you should <a href="/ssw/Standards/Rules/RulesToBetterSQLReportingServices.aspx#ChangePercent">
                            avoid showing change as a percentage</a>
                    </p>
                </li>
                <li>
                    <h2>
                        <a name="ASPNET"></a>ASP.NET MVC (Web Forms)</h2>
                    <p>If you have the skills, you should use MVC. This is for those who prefer the Web Forms.</p>
                    <p>
                        <b>Pros</b></p>
                    <ol>
                        <li>Query Strings supported (e.g. URL can be emailed to another user who can then 
                            see the correct report).</li>
                            <li>Complete Control over the parameters - e.g. &quot;Current Month&quot; hyperlink</li>
                            <li>Complete control over the rendering of the output</li>
                            <li>Can edit data via Databound Controls</li>
                            <li>Sorting via hyperlinks possible</li>
                            <li>Can make the reports more interactive, allowing such functionality as dynamic grouping, sorting and filtering</li>
                    </ol>
                    <p>
                        <b>Cons</b></p>
                    <ol>
                        <li>Long development time of sample report - 8 hours to convert including 
                            formatting,
                            <span>sorting</span> and adding 3rd party parameter controls (like Date Time 
                            Pickers).</li>
                        <li>Difficult to create reports that print adequately, although it is possible to do 
                            with CSS Printing.</li>
                        <li>Multiple Page reports impossible.</li>
                        <li>Cannot run offline unless the database is replicated and hosted locally (not 
                            recommended)</li>
                        <li>Very difficult for Users to create reports</li>
                        <li>Graphs - To show a graph you need to code OWC to generate a .png or get a 3rd 
                            Party Control like Dundas Charts</li>
                            <li><s>No Date/time picker built in - have to use a 
                            3rd party control or the AJAX Toolkit (or write your own)</s></li>
                            <li>No export to PDF or other formats - you have to install Acrobat and print to PDF 
                                from the browser</li>
                            <li>No nice Reporting Services interface - you have to create the navigation 
                                yourself</li>
                            <li>Have to configure security from scratch (e.g. using the ASP.NET membership 
                                and roles providers).</li>
                            <li>Hard to do drill-down. To do this, you need a Treeview with code</li>
                            <li>There is OLAP support but you need to know MDX.</li>
                    </ol>
                    <p>
                        <b>Conclusion</b></p>
                    <p>
                        Good if you:</p>
                    <ol>
                        <li>Want to edit data in your report (e.g. the ASP.NET Bindable controls like 
                            the DataList and GridView have edit modes)</li>
                            <li>Want dynamic grouping and cannot go to OLAP</li>
                    </ol>
                    <p>
                        <b>Samples</b></p>
                    <p>
                        More at <a href="http://www.asp.net/downloads/archived-v11/starter-kits/reports" target="_blank">
                        http://www.asp.net/downloads/archived-v11/starter-kits/reports </a>
                    </p>
                    
                    <dl class="image">
                        <dt><img border="1" src="Images/productdownloadgraph.gif" width="600" height="404"></dt>
                        <dd>Figure: SSW Product Download Report (ASP.NET)</dd>
                    </dl>
                        <dl>
                            <dt>
                                <pre>Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Request.QueryString(&quot;DateFrom&quot;) &lt;&gt; &quot;&quot; Then
            txtDateFrom.Text = Request.QueryString(&quot;DateFrom&quot;)
            txtDateTo.Text = Request.QueryString(&quot;DateTo&quot;)
        End If


    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click


        Response.Redirect(Request.Url.AbsolutePath.ToString + _
            &quot;?DateFrom=&quot; + HttpUtility.UrlEncode(txtDateFrom.Text) + _
            &quot;&amp;DateTo=&quot; + HttpUtility.UrlEncode(txtDateTo.Text), True)


    End Sub
</pre>
                            </dt>
                            <dd>
                                Figure: ASP.NET - Code to read from and write to the query string</dd></dl>
                        <br />
                        <dl>
                            <dt>
                                <pre>        ...
		&lt;asp:GridView ID=&quot;GridView1&quot; runat=&quot;server&quot; AllowPaging=&quot;True&quot; AllowSorting=&quot;True&quot;
            AutoGenerateColumns=&quot;False&quot; BackColor=&quot;#DEBA84&quot; BorderColor=&quot;#DEBA84&quot; BorderStyle=&quot;None&quot;
            BorderWidth=&quot;1px&quot; CellPadding=&quot;3&quot; CellSpacing=&quot;2&quot; DataSourceID=&quot;SqlDataSource1&quot;&gt;
            &lt;FooterStyle BackColor=&quot;#F7DFB5&quot; ForeColor=&quot;#8C4510&quot; /&gt;
            &lt;Columns&gt;
                &lt;asp:BoundField DataField=&quot;FileNameURL&quot; HeaderText=&quot;FileNameURL&quot; SortExpression=&quot;FileNameURL&quot; /&gt;
                &lt;asp:BoundField DataField=&quot;ProdName&quot; HeaderText=&quot;ProdName&quot; SortExpression=&quot;ProdName&quot; /&gt;
                &lt;asp:BoundField DataField=&quot;DownloadCount&quot; HeaderText=&quot;DownloadCount&quot; ReadOnly=&quot;True&quot;
                    SortExpression=&quot;DownloadCount&quot; /&gt;
                &lt;asp:TemplateField HeaderText=&quot;Graph&quot;&gt;
                    &lt;ItemTemplate&gt;
                        &lt;img src=&quot;Images/chartpixel.gif&quot; 
                             height=&quot;10&quot; 
                             width=&quot;&lt;%#DataBinder.Eval(Container.DataItem,&quot;DownloadCount&quot;)%&gt;&quot; /&gt;
                    &lt;/ItemTemplate&gt;
                &lt;/asp:TemplateField&gt;
            &lt;/Columns&gt;
            &lt;RowStyle BackColor=&quot;#FFF7E7&quot; ForeColor=&quot;#8C4510&quot; /&gt;
            &lt;SelectedRowStyle BackColor=&quot;#738A9C&quot; Font-Bold=&quot;True&quot; ForeColor=&quot;White&quot; /&gt;
            &lt;PagerStyle ForeColor=&quot;#8C4510&quot; HorizontalAlign=&quot;Center&quot; /&gt;
            &lt;HeaderStyle BackColor=&quot;#A55129&quot; Font-Bold=&quot;True&quot; ForeColor=&quot;White&quot; /&gt;
        &lt;/asp:GridView&gt;
		...
</pre>
                            </dt>
                            <dd>
                                Figure: ASP.NET - Implement the bar chart in the grid;<br />
                                <br />
                            </dd>
                        </dl>
                </li>

                <li>
                    <h2><a name="Kendo-UI"></a>Kendo UI</h2>
                    <p>Check out the <a href="http://demos.kendoui.com/dataviz/bar-charts/index.html" target="_blank">Kendo UI website</a>.</p>
                    <dl class="image">
                        <dt><img src="Images/kendoui.jpg" /></dt>
                        <dd>Kendo UI report sample</dd>
                    </dl>
                </li>

                <li>
                    <h2><a name="Power-View"></a>Power View</h2>
                    <p><a href="http://thinknook.com/sql-server-powerview-2012-demo-video-2012-02-25/" target="_blank">http://thinknook.com/sql-server-powerview-2012-demo-video-2012-02-25/</a></p>
                    <dl class="image">
                        <dt><img src="Images/powerview.jpg" /></dt>
                        <dd>Power View report sample</dd>
                    </dl>
                </li>

                <li>
                    <h2><a name="PowerPivot"></a>PowerPivot</h2>
                    <p>Check out the <a href="http://www.microsoft.com/en-us/bi/powerpivot.aspx" target="_blank">PowerPivot official site</a>.</p>
                    <dl class="image">
                        <dt><img src="Images/PowerPivot.jpg" /></dt>
                        <dd>PowerPivot</dd>
                    </dl>
                </li>

                <li>
                    <h2><a name="Excel"></a>Excel 2007/2010/2013 Data Visualization with SharePoint 2007/2010/2013 Excel Services</h2>
                    <dl class="image">
                        <dt>
                            <img src="Images/ExcelDataVis.jpg" width="801" height="694" />
                        </dt>
                        <dd>
                            Figure: Office Excel 2007/2010/2013 delivers new powerful data visualization tools</dd></dl>
                        <dl class="image">
                        <dt>
                            <img src="Images/SPExcelService.jpg" alt="SP Excel Service" />
                        </dt>
                        <dd>
                            Figure: SharePoint Excel Services brings the spread sheet onto the web</dd></dl>
                    <p>
                        <strong>Pros</strong></p>
                           
                    <ol>
                        <li>Can run over the Web via Web Services</li>
                        <li>Hides the Complexity of OLAP</li>
                        <li>End Users can change it; most users are very familiar with Excel</li>
                        <li>A visually appealing UI&nbsp;</li>
                        <li>Full drill-down support with support for Cubes</li>
                        <li>Can publish to SharePoint and allow users to interactively use the report, also gives you full version control</li>
                    </ol>
                    <p>
                        <strong>Cons</strong></p>
                           
                    <ol>
                        <li>Requires rich client Install</li>
                        <li>Requires the Excel 2007/2010 License
                        </li>
                        <li>Requires SharePoint 2007/2010 License for Excel Services</li>
                    </ol>
                </li>

                <li>
                       <h2><a name="PerformancePoint">PerformancePoint 2010/2013</a></h2>
                           <dl class="image">
                                <dt>
                                    <img src="Images/CreateKPIReport.jpg" alt="Create a KPI report " />
                                </dt>
                                <dd>
                                    Figure: PerformancePoint allows users to easily create KPI reports</dd></dl>
                           <dl class="image">
                                <dt>
                                    <img src="Images/DrillThrough.jpg" alt="Drill through on charts " />
                                </dt>
                                <dd>
                                    Figure: PerformancePoint allows users to drill through on charts to get more details</dd></dl>
                            <p>Pros:</p>
                         <ol>
                              
                             <li>Easy user interface for creating KPIs, Scorecards and Dashboards</li>
                             <li>Can share the data using SharePoint</li>
                             <li>End users can change the reports</li>
                             <li>Full drill down and drill through support</li>
                             <li>Rich client is deployed using ClickOnce</li>                             
                            </ol>
                            
                             <p>Cons:</p>
                         <ol>
                             <li>Requires SharePoint 2010/2013 with PerformancePoint 2010/2013 licence</li>
                            </ol>
                     </li>

                <li>
                    <h2><s><a name="Crystal"></a>Crystal Reports (Windows and Web)</s></h2>
                        
                    <img src="Images/rip.jpg" alt="rest in peace" />
 
                    <dl class="image">
                        <dt><img src="Images/RptInCrystal.gif" alt="Report in Crystal Report" width="499" height="401" /></dt>
                        <dd>Figure: We used Crystal (Windows) for our SQL Auditor tool to support disconnected opterations.</dd>
                    </dl>
                        <p><strong>Pros</strong></p>
                    <ol>
                        <li>Quicker to develop than ASPX (around 5 hours for the sample)</li>
                        <li>(Windows Client) Doesn't require a server-based product like SQL Reporting Services - can run offline</li>
                        <li>Great Printing - Easy to export to .pdf for printing</li>
                        <li>Easy to export to .xls for analyzing </li>
                        <li>Very fine control over output appearance. </li>
                        <li>Integrates well with .NET Strongly Typed Datasets and Objects.</li>
                        <li>Good Drill down feature.</li>
                        <li>There is OLAP support but you need to know MDX.</li>
                    </ol>
                    <p><b>Cons</b></p>
                        <ol>
                            <li>Custom Development environment</li>
                            <li>Licensing is very expensive for more than 5 concurrent reports</li>
                            <li>No sorting hyperlinks</li>
                            <li>(Windows Version Only) QueryString cannot be emailed to another user</li>
                            <li>Dead technology </li>
                        </ol>
                
                   <p><b>Conclusion</b></p>
                        <p>Quite expensive for Web Clients - Only use on solutions that have a big investment in Crystal or you require an offline ability for a product (Windows Client only)</p>
                        <table class="clsSSWTable">
                            <tr>
                                <td>
                                    <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=GD">George Doubinski</a> 
                                    said it best: &quot;My major pain with Crystal has been stability of their 
                                    development environment. Im not sure if they've done anything in 2.0 but in 1.1 
                                    it was nearly unusable. The hoops to jump through to simply change data source 
                                    was bordering on insane, for example. The other issue is, obviously, cost when 
                                    scaling.&quot;</td>
                            </tr>
                        </table>
                </li>

                <li>
                    <h2>
                        <a name="ActiveReports"></a>DataDynamics Active Reports (Web and Windows)</h2>
                    <p>
                        Basically an alternative if you were to choose Crystal. <a target="_blank" href="../../Redirect/DataDynamics.htm">
                            http://www.datadynamics.com/</a>&nbsp;<img alt="You are going to a site outside of SSW"
                                src="/ssw/Images/leavesite.gif" width="17" height="11">
                    </p>
                    <p>
                        <b>Pros</b></p>
                    <ol>
                        <li>Cheaper Licencing than Crystal (Royalty Free)</li>
                        <li>Xopy deployment of reports</li>
                        <li>(Windows Client) Doesn't require a server-based product like SQL Reporting 
                            Services - can run offline</li>
                    </ol>
                    <p>
                        <b>Cons
                            <br />
                        </b></p>
                        <ol>
                            <li>Support for product not as widespread</li>
                            <li>Not in bed with Microsoft like Crystal</li>
                            <li>There is OLAP support but you need to know MDX.<br />
                            </li>
                        </ol>
                </li>
                <li>
                    <h2>
                        <a name="XMLXSL"></a>XML/XSL (Windows and Web)</h2>
                    <p>
                        <b>Pros</b></p>
                    <ol>
                        <li>Can do great things like <a target="_blank" href="../../Redirect/XML/AmorphousMediaXSLReporting.htm">
                            http://www.amorphous-media.com/client_demo/xmlreports/student_app.htm</a>&nbsp;<img
                                alt="You are going to a site outside of SSW" src="/ssw/Images/leavesite.gif"
                                width="17" height="11"></li>
                        <li>Can have client side filters and sorting</li>
                        <li>(Windows Client) Doesn't require a server-based product like SQL Reporting 
                            Services - can run offline</li>
                    </ol>
                   
                    <b>Cons
                        <br />
                        </b>
                    <ol>
                        <li>Very long development time</li>
                        <li>Impossible to make it print for multiple page reports.</li>
                        <li>There is OLAP support but you need to know MDX.<br />
                        </li>
                    </ol>
                    <img border="0" src="Images/RptInXSL.jpg" alt="Report in XSL" width="320" height="338">
                    <p><strong>Figure: We used this method for reporting in the SSW tool Code Auditor (a 
                        Windows Forms application)</strong> </p>
                    
                </li>
              
                <li>
                    <h2>
                        <a name="Access"></a>Access (Rich Client and Web via SSW Access Reporter)&nbsp;</h2>

                    <p>This solution has worked since Access 97 to Access 2010 and 2013</p>

                    <p>
                        <b>Pros</b></p>
                    <ol>
                        <li>Good Report development environment</li>
                        <li>Very good printing support</li>
                        <li>(Windows Client) Doesn't require a server-based product like SQL Reporting 
                            Services - can run offline</li>
                    </ol>
                    <p>
                        <b>Cons</b></p>
                    <ol>
                        <li>Access needs to be on the machine generating the reports (e.g. on the server 
                            when using SSW Access Reporter)</li>
                        <li>Need an Access License</li>
                        <li>Not designed natively for the web</li>
                        <li>No drill-down features</li>
                        <li>No OLAP support</li>
                        <li>(Windows Clients Only ) Not every end user has Access (this is a show stopper if 
                            Access in not in the client's SOE!) </li>
                    </ol>
                    <p>
                        <b>Conclusion</b></p>
                    <p>
                        Only use <a href="/ssw/AccessReporter/">SSW Access Reporter</a> for solutions 
                        that have a big investment in Access.
                    </p>
                    <p>
                        <a href="/ssw/AccessReporter/AccessReporterDemo.aspx">
                        http://www.ssw.com.au/ssw/AccessReporter/AccessReporterDemo.aspx</a>
                    </p>
                    <dl class="image">
                        <dt>
                            <img border="1" src="Images/AccessReporterSample.gif" width="600" height="547" />
                        </dt>
                        <dd>
                            <strong>Figure: Tools like SSW Access Reporter help to display your Access data 
                            on the web</strong>
                        </dd>
                    </dl>
                    <p>
                        View a <a href="/ssw/Standards/DeveloperDotNet/Resources/AccessReporterSample.pdf">
                        Sample report</a>
                    </p>
                </li>
                <li>
                    <h2>
                        Office Web Controls (OWC)<a name="OWC"></a></h2>
                    <p>
                        <strong>Pros</strong></p>
                    <ol>
                        <li>Allow you to embed interactive office documents in to HTML</li>
                        <li>Supports updates to the datasource via the control</li>
                        <li>Easy to create - just save a document in &quot;Interactive HTML format&quot;</li>
                        <li>Supports pivot tables, spreadsheets, charts</li>
                    </ol>
                    
                    <p>
                        <strong>Cons</strong></p>
                    <ol>
                        <li>Require a download or to have office installed (typically you would only install 
                            on an intranet)</li>
                        <li>They run as an ActiveX control - so have limited access to your local system</li>
                    </ol>
                    <p>
                        <a href="/timeproonline/Report/ProductDownloadGraph_OWC.aspx">
                        http://www.ssw.com.au/timeproonline/Report/ProductDownloadGraph_OWC.aspx</a></p>
                
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
                            <h2><s><a name="DataAnalyzer"></a>OLAP - Data Analyzer (aka Microsoft's Rich Client Solution)</s></h2>

                            <img src="Images/rip.jpg" alt="rest in peace" />

                            <p><strong>Pros</strong></p>
                           
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
                            <strong>Cons</strong>
                            <ol>
                                <li>No longer supported. This functionality has been moved into Excel 2007.</li>
                                <li>Microsoft dont have a web version of Data Analyzer.<br />
                                    <br />
                                </li>
                            </ol>
                        </li>
                        
                        <li>
                            <h2>
                                <a name="OLAP3rdParty"></a>OLAP - 3rd Party</h2>
                            <p>
                                Alternatively you can use:<br>
                                <br>
                                <a href="/ssw/Redirect/Thinslicer.htm">http://www.thinslicer.com</a>&nbsp; (free)
                                <br>
                                <a href="/ssw/Redirect/AladdinFixedReports.htm">
                                http://aladdin.sdm.com.au/demo/Template/AladdinFixedReports.asp</a>&nbsp;
                                <br>
                                <a href="/ssw/Redirect/zaptechnology.htm">http://www.zaptechnology.com</a>&nbsp;
                            </p>

                        </li>
  
                    
            </ol>

        	<h2><a name="AcknowledgementsLikeThis"></a>Acknowledgements</h2>
			<p><a href="/people/adam-cogan">Adam Cogan</a><br />
                <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=DDK">David Klein</a></p>

</asp:content>
                           
