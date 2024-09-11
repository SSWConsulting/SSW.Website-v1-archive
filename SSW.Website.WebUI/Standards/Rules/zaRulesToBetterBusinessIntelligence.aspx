<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Rules to Better Business Intelligence"  %>

<%@ Register TagPrefix="SSW" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				<ssw:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />
    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D52756C6573253230746F25323042657474657225427573696E657373253230496E74656C6C6967656E6365')">
    Let us know</a> what you think.</p> 		
		
	   <div class="TableOfContents">
				<h3>Rules to Better Business Intelligence</h3>
				<ol>
				    <li><a href="#presentations">When presenting make sure you use AdventureWorks database and OLAP cube</a></li>
				    <li><a href="#SeparateDW">Make a separate database for your Data Warehouse</a></li>
				    <li><a href="#NamingConventions">Do you follow a naming convention for your Data Warehouse?</a></li>
				    <li><a href="#TimeDim">Do you have a DimTimeDay table in your Data Warehouse?</a></li>
				    <li><a href="#Performance">Do you know which Performance you care about?</a></li>
				    <li><a href="#DimensionKey">Do you always use Shared Dimensions?</a></li>
				    <li><a href="#VirtualDims">Always use Virtual Dimensions instead of Real Dimensions where possible</a></li>
				    <li><a href="#DependsOn">When you are using Real Dimensions, when applicable specify the Depends On Dimension property</a></li>
				    <li><a href="#AllDimensionsTag">BI - Always make sure the dimensions All Captions = All<span style="color:Red; font-weight:bold;">*FIXED IN SQL 2008*</span></a></li>
				    <li><a href="#SharedDims">Do you always use Shared Dimensions?</a></li>
				    <li><a href="#SpacesInNames">Do you always use spaces in names?</a></li>
				    <li><a href="#ClearTimeScales">Always make time scales clear, if using "financial year" then make it obvious</a></li>
				    <li><a href="#MetaData">Move your OLAP MetaData from Access to SQL Server</a></li>
				    <li><a href="#Aggregations">When designing don't compute cube aggregations</a></li>
				    <li><a href="#HideZero">Do you hide zero values when you are doing financial report?</a></li>
				    <li><a href="#RemoveDecimal">Do you remove decimal places from chart?</a></li>
				    <li><a href="#ConditionalFormat">Do you use conditional formatting to visualize your data?</a></li>
				    <li><a href="#DMAddins">Can you use the super cool Microsoft Data Mining Addin?</a></li>
				    <li><a href="#DefaultData">Do you avoid defaulting data?</a> </li>
				    <li><a href="#SortDatesRightToLeft">Do you always sort dates in Excel in descending order from right to the left?</a></li>
				    <li><a href="#CheckCube">Do you check the cube has been processed?</a></li>
				    <li><a href="#CubeOrPerformancepoint">Do you know where to put your KPIs? (Cube or PerformancePoint Server)</a></li>
				    <li><a href="#BuildViews">Do you build a layer of views in the data warehouse that has the business rules and calculations?</a></li>
				    <li><a href="#LogInETLAndSSIS">Do you use logging in your ETL and SSIS packages?</a></li>
				    <li><a href="#FixIntegrityProblem">Do you fix data integrity problems before it gets to the data warehouse? </a></li>
				    <li><a href="#AddDiagram">Do you add a diagram for each fact table?</a></li>
				    
				</ol>
		</div>
		<div id="mainContent">
          <ol>
            <li>
			  <h2><a name="presentations"></a>When presenting make sure 
				you use   AdventureWorks database and OLAP cube</h2>
			  <p align="left">For years we have been using the samples of 
				Northwind (for SQL Server) and FoodMart (for OLAP). Well no 
				more... SQL Reporting Services includes a new sample database of 
				AdventureWorks2012.</p>
			  <p align="left">Download 
					<a href="/ssw/redirect/prodsamples.htm">AdventureWorksDW zip file</a> 
				which contains the AdventureWorks2012DW database (a backup of a 
				flattened/de-normalised version of AdventureWorks2012) and the 
				AdventureWorks2012 analysis server database that includes the 
				Reseller Sales cube. (7.41 MB - .zip)</p>
			  <p align="left">View
				<a href="RulesToBetterBusinessIntelligenceResourceSetup.aspx">Instructions</a> 
		         on setting up the above resources.</p>
			</li>

			<li>
			<h2><a name="SeparateDW"></a>Make a separate database for your Data 
			Warehouse</h2>
			<p>You should always base your cubes off a separate data warehouse database. 
	For larger organizations this will also reside on separate machines. This 
	will be used as the store for all the data collected as time rolls on. Why 
	would you do this?</p>
			<p>The good things:</p>
			<ul>
				<li>Only keep data you want</li>
				<li>Allows you to purge old data from OLTP</li>
				<li>Allows you to record Time Dependant info (Slowly Changing Dimensions)</li>
				<li>Performance  not hitting the OLTP</li>
			</ul>
			<p>The bad things:</p>
			<ul>
				<li>Redundancy Disk space</li>
				<li>Mirror Schema changes</li>
			</ul>
			<p>People often ask: Why make a new database and not just make Views/StoredProcs? 
	The answer to this is that when using multiple databases, cleaning data

	gets harder and messier without the data warehouse in the middle (where a 
	DTS package may exist for each datasource into the warehouse).</p>
			
					<dl class="badImage">
                    <dt><img src=Images/OLAP_SeparateDW.gif alt="OLAP separate" ></dt>
                    <dd>Figure: A good naming convention for your Data Warehouse is to tack on DW to the end of the name</dd>
                    </dl>
				


			<table class="clsSSWTable">
			<tr>
					<td align="left">
					An Exception:<br /><br /> 

If you are <b>not</b> worried about performance issues and your data is clean, then you dont need to make another database 
<br />
Just add the business logic using views (eg. If you have a bit field, but you want to add meaning, then you add a view with a CASE statement).

 
<br /><br />
Note: In SQL Server 2005 you would add this business logic in a new layer Data Source Views within the UDM (Unified Data Model)

					</td>
				</tr>
			</table>

			</li>

			<li>
			<h2><a name="NamingConventions"></a>Do you follow a naming convention for your Data Warehouse?
              </h2>
				<p>Use Dim&lt;Name&gt; for the dimension tables. (e.g. DimAccount)</p>
				<p>
								&nbsp;&nbsp;&nbsp;
				(<b>Tip</b>: think of Dimensions as your filters/WHERE/ GROUP 
				BY)</p>
				<p>Use Fact&lt;Name&gt; for the fact tables. (e.g. FactFinance)</p>
				<p>&nbsp;&nbsp;&nbsp; (<b>Tip</b>: Fact tables contain the 
				numbers/measures (or the transactions tables/COUNT()/SUM())</p>
				   <dl class="badImage">
                    <dt><img src="images/NoStandardNameConvention.jpg" alt="Need standard name conventions" /></dt>
                    <dd>Figure - Bad Example - no standard naming conventions,it is unclear what some tables are used for</dd>	    			    
                   </dl>
				   <dl class="goodImage">
                    <dt><img src="images/OLAP_NamingConventions.gif" alt="Clear name conventions " /></dt>
                    <dd>Figure - Good Example - We can clearly see which tables are dimensions and which are facts</dd>	    			    
                   </dl>
			</li>
	<li>
	<h2><a name="TimeDim"></a>Do you have a DimTimeDay table in your Data Warehouse?</h2>
			<p><span lang="EN-AU">Your data warehouse must have a table DimTimeDay with a 
record for every day. This way when you want to make reports based on time 
(which you inevitably will), you can view data for periods other then standard 
calendar periods (e.g. the fiscal quarter).</span></p>

			<p><span lang="EN-AU">How do you create this?</span></p>
	<p><span lang="en-au">Well, there are two ways that we recommend:</span></p>
          <ol>
			<li>Using the Dimension Wizard in SQL Server 2005 
			(see <a href="CreatingATimeDimensionIn10EasySteps.aspx">Creating a Time Dimension in 10 Easy Steps</a> 
			for more information - Preferred Method).</li>
			<li>Using <a href="/ssw/Redirect/ssabi.htm">BI Accelerator</a>
			<img src="/ssw/Images/LeaveSite.gif" width="17" height="11" alt="you are about to leave the SSW site" />.</li>
            </ol>
	<p>While we prefer using the Dimension Wizard in SQL Server 2005, you may find using BI Accelerator to be more 
	customizable; however, you should be aware that BI Accelerator is an 
	Excel sheet that creates an entire data warehouse (including DB, Cubes and 
	DTS to populate it) and not just the Time Dimension table.</p>

			<table border="0" id="table2">
				<tr>
					<td align="center">
					&nbsp;<img src="Images/CreateDimTimee10.gif" width="915" height="307"></td>
				</tr>
				<tr>
					<td><b>
					<span lang="EN-AU">Figure: Time Dimension table after completing the Dimension 
					Wizard in SQL Server 2005</span></b></td>
				</tr>
			</table>

			<table border="0" id="table2">
				<tr>
					<td align="center">
					<img border="0" src=Images/OLAP_ViewTimeData.gif alt="OLAP View TimeData" /></td>
				</tr>
				<tr>
					<td><b>
					<span lang="EN-AU">Figure: This is what your Time Dimension will look 
							like after using BI Accelerator.</span></b></td>
				</tr>
			</table>
            </li>
			
			<li><h2><a name="Performance"></a>Do you know which Performance you care about?</h2>
			<p>There is <a href="http://www.microsoft.com/download/en/details.aspx?displaylang=en&id=17303" target="_blank">SQL Server 2008 White Paper: Analysis Services Performance Guide</a>.</p>
			<p>Sometimes it is a trade-off like when you set lots of aggregates which making the users querying faster, but makes the Cube slower to build, and larger.</p>				
			</li>
            			
			<li>
			<h2><a name="DimensionKey"></a>Always make the Lowest Level of a Dimension the Key</h2>
			<p>You should always have a unique key for every element of data. 
			This means that the lowest level of a given dimension should be the 
			key as this will be unique and based on some unique key already.</p>
			<p>For example:</p>
			<table border="0" id="table4">
				<tr>
					<td align="center">
					<img border="0" src=Images/OLAP_LowestDimensionKey.gif alt="OLAP Lowest Dimension Key" width="449" height="410" ></td>
				</tr>
				<tr>
					<td><b>
					<span lang="EN-AU">Figure: What is wrong with this? ...</span></b></td>
				</tr>
			</table>
			<div>&nbsp;</div>
			<table border="0" id="table4">
				<tr>
					<td align="center">
					<img border="0" src=Images/OLAP_UniqueMemberKeys.gif alt="OLAP Unique Member Keys" width="343" height="285" ></td>
				</tr>
				<tr>
					<td><b>
					<span lang="EN-AU">Figure: ... Well the bottom Level (called the Leaf Level) should always be the key.</span></b></td>
				</tr>
			</table>
						<p>Note: Remember to make the <b>Member Keys Unique</b> = True and 
						<b>Member Names Unique</b> = True</p>
			<p>The first reason is for performance as in the Cube Editor you can successfully run Tools  Optimize Schema.
			<i>Note: This improves Cube Building Performance (always) and Querying Performance (for some cases).</i>

</p>
			<p>The second reason is a smaller cube size, but you need to apply the next rule for that..</p>
			<div>&nbsp;</div></li>
			<li>
			<h2><a name="VirtualDims"></a>Always use Virtual Dimensions instead of Real Dimensions where possible</h2>
			<p>			<table border="0" id="table4">
				<tr>
					<td align="center">
					<img border="0" src=Images/OLAP_VirtualDimensions.gif alt="OLAP Virtual Dimensions" width="205" height="131" ></td>
				</tr>
				<tr>
					<td><b>
					<span lang="EN-AU">Figure: What is wrong with this? ...</span></b></td>
				</tr>
			</table>
			<p>
				<span lang="EN-AU">Well we are using Real Dimensions for &quot;Product Color&quot; 
				and &quot;Product Size&quot;, when they should be Virtual Dimensions of the 
				Product Dimension</span></p>
				<p><span lang="EN-AU">There are 3 steps to doing that:</span></p>
				<p><span lang="EN-AU">1) Add the <b>Member Properties</b> eg. Color and 
				Size</span></p>
			<p><table border="0" id="table4">
				<tr>
					<td align="center">
					<img border="0" src=Images/OLAP_VirtualDimensionsForProduct.gif alt="OLAP Virtual Dimensions For Product" width="258" height="222" ></td>
				</tr>
				</table></p>

			<p>2) Delete the original Shared Dimension</p>
			<p>3) Add the new Virtual Dimension using the wizard
</p>
			<p><table border="0" id="table4">
				<tr>
					<td align="center">
					<img border="0" src=Images/OLAP_VirtualDimensionsCreate.gif alt="OLAP Virtual Dimensions Create" width="178" height="75" ></td>
				</tr>
				</table>
			<p><i>Note: This improves Cube Building Performance (always) and Querying Performance (for most cases as the cube is physically smaller).</i></p>
			<p>&nbsp;</p>
			</p>

</p></li>
			<li>
			<h2><a name="DependsOn"></a>When you are using Real Dimensions, when applicable specify the &quot;Depends On Dimension&quot; property</h2>
			<p>A common property which is often overlooked is &quot;Depends on Dimension&quot;. This will indicate to the aggregate engine that these dimensions are related, therefore more efficient aggregates will be built.</p>
				<dl class="image">
					<dt><img src="Images/OLAP_DependsOn.gif" alt="OLAP Depends On" /></dt>
					<dd>Figure: In this example the Depends on Dimension property should be set to &quot;Product&quot;</dd>
				</dl>
				<p>Note: This improves Cube Building Performance (sometimes) and Querying Performance (for most cases because you have more efficient aggregates in the Cube).</p>
				
			</li>

			<li>
			<h2><a name="AllDimensionsTag"></a>BI - Always make sure the dimensions All Captions = All - <span style="color:Red; font-weight:bold;">*FIXED IN SQL 2008*</span></h2>
			    <strike>
                <p>When you are carrying out reporting (using Reporting Services) based on some OLAP cube you should change the &quot;All Caption&quot; property of each dimension to be have the value &quot;All&quot;. By default the caption for the dimension will be &quot;All &lt;dimension_name&gt;&quot; (e.g. All Products). This default is distracting when used in reporting solutions and doesn't particularly clarify anything anyway.</p>
                <dl class="image">
			        <dt><img src="Images/OLAP_OnlyUseAll_ByItself.jpg" alt="OLAP Only Use All By Itself" /></dt>
			        <dd>Figure: Set the &quot;All Caption&quot; to read &quot;All&quot; instead of the distracting default</dd>
			    </dl>
		        <p>When you use this dimension in the parameter toolbar of Reporting Services this default value will look horrible and it should be changed to some consistent value in order to facilitate fast scanning of the parameter values.</p>
				<dl class="image">
			        <dt><img src=Images/OLAP_MakesAnythingButAllStandOut2.jpg alt="OLAP Makes Anything But All Stand Out" /></dt>
					<dd>Figure: Having set the All caption nicely, you can more easily see which products aren't using the defaults.</dd>
			    </dl>
				<p>Read our rule on <a href="RulestoBetterInterfaces-Controls.aspx#AllInComboBoxes">Controls - Do you include '-All-' option in your ComboBoxes?</a></p>
                </strike>
            </li>

			<li>
			<h2><a name="SharedDims"></a>Do you always use Shared Dimensions?</h2>
			<p>When you're building an Analysis Server Database you should make always use Shared Dimensions. This is because:</p>
			<ol>
				<li>all of your cubes can re-use them, making future cubes faster to develop</li>
				<li>they are only processed once</li>
			</ol>

			<dl class="image">
			        <dt><img border="0" src=Images/OLAP_UseShared.gif alt="OLAP Use Shared" /></dt>
				<dd>Figure: This is the only place you should be creating dimensions. Stay aware from Private dimensions hidden in the cube.</dd>
			</dl>
            </li>
			
            <li>
			<h2><a name="SpacesInNames"></a>Do you always use spaces in names?</h2>
			<p>Always use spaces for Dimension Names, Level Names and Measures  this is a business tool and you want users to see friendly names.</p>
			</li>
			
            <li>
			<h2><a name="ClearTimeScales"></a>Always make time scales clear, if using &quot;financial year&quot; then make it obvious</h2>

			<table class="clsSSWTable">
				<tr>
					<td>
								<div>2004</div>
			<div>&nbsp;&nbsp;&nbsp;...</div>
			<div>&nbsp;&nbsp;&nbsp;- Month 06</div>
			<div>2005</div>
			<div>&nbsp;&nbsp;&nbsp;- Month 07</div>
			<div>&nbsp;&nbsp;&nbsp;- Month 08</div>
			<div>&nbsp;&nbsp;&nbsp;- Month 09</div>
			<div>&nbsp;&nbsp;&nbsp;- Month 10</div>
			<div>&nbsp;&nbsp;&nbsp;</div>

					</td>
				</tr>
				<tr><td><b>Figure: What is wrong with this?</b></td></tr>
			</table>
			<p>3 things:</p>
			<ol>
				<li>If you are at the year level, the user doesnt know if it is financial or calendar</li>
				<li>When you are at the month level, the user doesnt know what year they are in</li>
				<li>The full month names should be used because there are no issues with sorting.</li>
			</ol>
			<p>When you create the dimension you specify the Order By to be Key. Therefore it would look like this:</p>
			<table class="clsSSWTable">
				<tr>
					<td>
			<div>FY 2004</div>
			<div>&nbsp;&nbsp;&nbsp;
</div>
			<div>&nbsp;&nbsp;&nbsp; - Jun 2004</div>
			<div>FY 2005</div>
			<div>&nbsp;&nbsp;&nbsp; - Jul 2004</div>
			<div>&nbsp;&nbsp;&nbsp; - Aug 2004</div>
			<div>&nbsp;&nbsp;&nbsp; - Sep 2004</div>
			<div>&nbsp;&nbsp;&nbsp; - Oct 2004</div>
			<div>&nbsp;&nbsp;&nbsp; </div>
					</td>
				</tr>
				<tr><td><b>Figure: This is the type of data we want. Make names 
					clear and clarify that you are referring to financial year.</b></td></tr>
			</table></li>

			<li>
			<h2><a name="MetaData"></a>Move your OLAP MetaData from Access to SQL Server</h2>
			<p>Analysis Server will by default use an Access database to store the meta data 
for each of the databases. Presumably this is because you don't necessarily need 
to have SQL Server on the same machine as Analysis Server. You should change 
this repository to point to your SQL Server because it's a more secure, robust, 
and allows you to backup your data with your normal SQL Server backups.</p>
			<p>To migrate the repository of meta data:</p>
			<ol>
				<li>In Enterprise Manager, create a new database to use for the meta data. 
	Call it &quot;OLAPMetaData&quot;.</li>
				<li>In Analysis Manager, right click the server, select &quot;Migrate 
	Repository&quot; and point it to your table in the database.</li>
			</ol>
				<table border="0" id="table3">
					<tr>
						<td><img border="0" src="Images/OLAP_MigrateRepository.gif" alt="OLAP Migrate Repository" /></td>
					</tr>
					<tr>
						<td><b>Figure: Move the MetaData repository away from the default Access Database into SQL Server</b></td>
					</tr>
				</table>
				<p>At the end you can also double check that it worked successfully by checking the Repository Connection String in the context menu shown above.</p>

			</li>
			
			<li>
				<a name="Aggregations"></a>
				<h2>When designing don't compute cube aggregations</h2>
				
				<p>
					When prompted about whether to process the aggregations for the cube 
					when you are designing, you should click No in order to save time.
					However, when deploying or testing query performance you should click Yes.
				
				</p>
				
				<dl class="image">
					<dt><img src="Images/RulesToBetterBusinessIntelligence_Aggregations.gif" alt="Rules To Better Business Intelligence Aggregations" /></dt>
					<dd>Figure: Click No while designing, click Yes when deploying or testing performance.</dd>
                </dl>
			</li>
			<li>
			    <h2><a name="HideZero"></a>Do you hide zero values when you are doing financial report?</h2>
			    <p>
			        Financial report could be very complicated and there are large number of figures showing, 
			        we only want to focus on the significant figures. Zeros could be ignored, so we will hide zeros in order to make other figures standard out. 
			    </p>
			    <dl class="badImage">
			    <dt><img src="images/HideZero_Bad.GIF" border="0" width="771" height="283" /></dt>
			    <dd>Figure: Bad Example - a lot of zeros are showing in the gird, we cannot see the significant figures.</dd>	    			    
			    </dl>
			    
			    <dl class="goodImage">
			    <dt><img src="images/HideZero_Good.GIF" border="0" width="901" height="301" /></dt>
			    <dd>Figure: Good Example - zeros are hidden, easy to focus on the values</dd>	    			    
			    </dl>
			    
			    <p>
			        To do this in Excel sheet, you can simply choose the cell and format it as "Accounting"
			    </p>
			    <dl class="image">
			    <dt><img src="images/HideZero_ExcelFormatCell.GIF" border="0" width="530" height="459" /></dt>
			    <dd>Figure: Excel - choose "Accounting" as the cell format</dd>	    			    
			    </dl>
			</li>
			<li>
			    <h2><a name="RemoveDecimal"></a>Do you remove decimal places from chart?</h2>
			    <p>
			        Graphs or charts are used for showing big picture or trend of data. Decimal places in such 
			        reports are not useful at all, only a waste of space. So you should always remove decimal places 
			        from charts. 
			    </p>
			    
			    <dl class="badImage">
			    <dt><img src="images/RemoveDecimal_Bad.GIF" border="0" width="360" height="285" /></dt>
			    <dd>Figure: Bad Example - decimal places on a chart is a waste of space</dd>	    			    
			    </dl>
			    
			    <dl class="goodImage">
			    <dt><img src="images/RemoveDecimal_Good.GIF" border="0" width="359" height="284" /></dt>
			    <dd>Figure: Good Example - decimal places are removed from the chart</dd>	    			    
			    </dl>
			    
			</li>
			<li>
			    <h2><a name="ConditionalFormat"></a>Do you use conditional formatting to visualize your data?</h2>
			    <p>
			        If you are using Excel 2007, there is a very exciting new feature that allows you to visualize your data in the place. 
			        It allows you to view your data in a visual way, make it very easy to tell the difference. 
			    </p>
			    
			    <dl class="badImage">
			    <dt><img src="images/ConditionalFormat_Bad.GIF" border="0" width="444" height="166" /></dt>
			    <dd>Figure: Bad Example - no visualization, cannot tell the difference of data easily</dd>	    			    
			    </dl>
			    
			    <dl class="goodImage">
			    <dt><img src="images/ConditionalFormat_Good.GIF" border="0" width="446" height="166" /></dt>
			    <dd>Figure: Good Example - visualized data, very easy to read and understand the difference</dd>	    			    
			    </dl>
			    
			    <p>
			        You can simply choose "Conditional Formatting" from the tool bar in Excel 2007 to do this. 
			    </p>
			    
			    <dl class="image">
			    <dt><img src="images/ConditionalFormat_Howto.GIF" border="0" width="434" height="413" /></dt>
			    <dd>Figure: Choose "Conditional formatting - Data Bars" to enable data visualization</dd>	    			    
			    </dl>
			</li>
			<li>
			    <h2><a name="DMAddins"></a>Can you use the super cool Microsoft Data Mining Addin?</h2>
			    <p>
			        Microsoft SQL Server 2005 Data Mining Add-ins for Microsoft Office 2007 (Data Mining Add-ins) allow you take advantage of SQL Server 2005 predictive analytics in Office Excel 2007 and Office Visio 2007.
			    </p>
			    
			    <dl class="image">
			    <dt><img src="images/DMAddins_SampleData_1.GIF" border="0" width="1181" height="605" /></dt>
			    <dd>Figure: Simply click the highlight exceptions to see data that looks abnormal</dd>	    			    
			    </dl>
			    
			    <dl class="image">
			    <dt><img src="images/DMAddins_SampleData_1.GIF" border="0" width="1181" height="605" /></dt>
			    <dd>Figure: Click Forecast on this one</dd>	    			    
			    </dl>
			</li>
			
			 <li>
                           <h2>
                           <a name="DefaultData"></a>Do you avoid defaulting data?
                           </h2>
                           
                           <p>
                           
                          In Business Intellegence, it is not preferable to default data, eg. Country=USA, There are so many web pages that do this and it it influences data - and ruins your Business Intelligence reports - you think they are all from the USA - when really they have just left the default.<br />
                          Check rule <a href="/ssw/Standards/Rules/RulestoBetterInterfaces-Forms.aspx#DataJunk">Do you avoid "Data Junk"?</a> in Rules to Better Interfaces.
                          
                          </p>
                           
                           </li>
                           <li>
                           <h2>
                           <a name="SortDatesRightToLeft"></a>Do you always sort dates in Excel in descending order from right to the left?
                           </h2>
                           
                           <p>
                           When you're working with spreadsheets in Excel, be sure to sort dates in descending order from right to left.
                           </p>
                           			    <dl class="badImage">
			    <dt><img src="images/SortDates_Bad.GIF" border="0" width="761" height="299" /></dt>
			    <dd>Figure: Bad Example - Dates are sorted from left to right.</dd>	    			    
			    </dl>
			    <br />
			    
			    			    <dl class="goodImage">
			    <dt><img src="images/SortDates_Good.GIF" border="0" width="755" height="307" /></dt>
			    <dd>Figure: Good Example - Dates are sorted from right to left.</dd>	    			    
			    </dl>
			    
                           
                           </li>
            <li>
                <h2>
                    <a name="CheckCube"></a>Do you check the cube has been processed?
                </h2>
                <p>
                    You'd better check the cube has been processed.
                </p>
                <dl class="image">
                    <dt><img src="images/CheckCube.jpg" alt="Processed cube" /></dt>
                    <dd>Figure: proczsValidateSSWData2005Cube_ver.1-01.</dd>	    			    
                </dl>
            </li>
            <li>
              <h2><a name="CubeOrPerformancepoint"></a>Do you know where to put your KPIs? (Cube or PerformancePoint Server)</h2>
              <p>PerformancePoint Services 2012 gives you a nice GUI to build KPIs if you are not familiar with MDX. The bad news is that these KPIs can't be used by any other cube browsers (e.g. Excel)</p>
              <p>So the question is... Do you put the KPI in the cube (and link it in PerformancePoint Services 2012) or directly into PerformancePoint Services 2012?</p>
                <dl class="badImage">
                    <dt><img src="images/CreateKPI01.jpg" alt="We need a KPI easier to use " /></dt>
                    <dd>Figure: Bad Example - PerformancePoint Services - Dashboard Designer - Creating a KPI - Very easy to use</dd>	    			    
                </dl>
                <p>The cube gives you the flexibility to write whatever KPIs you want (including trends) ?but you need to know MDX</p>
                 <dl class="goodImage">
                    <dt><img src="images/CreateKPI02.jpg" alt="Create a KPI with MDX statements " /></dt>
                    <dd>Figure: Good Example - BIDS - Creating a KPI with MDX statements - ultimate flexibility,steep learning curve </dd>	    			    
                </dl>
                <p>Ultimately, having the KPIs in the cube makes more sense. Keeping them centralized, link them in PerformancePoint Services and potentially allow other cube browsers (like Excel) to access them</p>
                <div class="greyBox">
                <p>
                <b>Using data in Microsoft Office Excel workbooks</b>&nbsp;You can configure a KPI in an Excel workbook and link to the KPI from Office SharePoint Server 2007. As the data in the workbook changes, the KPI is automatically updated. You can choose to have the workbook displayed on the same Web page by using the Excel Web Renderer (EWR).
                <a href="https://support.office.com/en-ca/article/Create-and-publish-Key-Performance-Indicators-KPIs-e6dd8e06-b596-431b-bd03-b588e6450903#bmbacktotop">https://support.office.com/en-ca/article/Create-and-publish-Key-Performance-Indicators-KPIs-e6dd8e06-b596-431b-bd03-b588e6450903#bmbacktotop</a>
                </p>
                </div>
                <dl>
                <dd>Figure: The reason to put your KPIs in the cube</dd>
                </dl>
            </li>
            <li>
               <h2><a name="BuildViews"></a>Do you build a layer of views in the data warehouse that has the business rules and calculations?</h2>
               <p>Having the cube work from views is the first step in ensuring the stability of the cube. As the cube matures and the business refines what it needs to report on, the cube will change and have facts and dimensions added or removed from it. </p>
               <p>By using views developers can hide the change in schemas and always present a consistent interface for the cube to work with. </p>
               <p>For example, you can put the calculation of the GST component as a calculated field in a view. However, our preference is to create a denormalized field to store this data. (See our rule <a href="/ssw/standards/rules/rulestobettersqlserverdatabases.aspx#triggersdenormalized">Do you use triggers for denormalized fields?</a>)</p>
            </li>
            <li>
              <h2><a name="LogInETLAndSSIS"></a>Do you use logging in your ETL and SSIS packages?</h2>
              <p>The data warehouse is the one source of truth (see <a href="/ssw/Standards/Rules/RulesToBetterBusinessIntelligence.aspx#FixIntegrityProblem">Do you fix data integrity problems before it gets to the data warehouse?</a>), so to prevent bad data from getting in there we can log them using SSIS.</p>
              <p>You can log any exceptions to a table (see <a href="http://msdn.microsoft.com/en-us/library/ms140246.aspx">http://msdn.microsoft.com/en-us/library/ms140246.aspx</a>. This way you can either allow good data to still be processed and just filter out the bad data.</p>
              <p>You can then report on, and have metrics on the errors.</p>
              <p>This will help improve the quality of the data in the warehouse as the cube matures.</p>
            </li>
            <li>
              <h2><a name="FixIntegrityProblem"></a>Do you fix data integrity problems before it gets to the data warehouse?</h2>
               <p>The data warehouse is the one source of truth. Data should have integrity and be verified to exist in the warehouse.</p>
               <p>Your first line of defence is verifying the data in your source databases are correct. This can be achieved using a procValidate to check the data. See our rule Do you validate each "Denormalized Field" with procValidate?</p>
               <p>You next line of defence is in the ETL process where you can check for data integrity issues (e.g. missing keys, values). At this point you can choose to fail the process or proceed with the valid records (logging the invalid ones). See our rule <a href="#LogInETLAndSSIS">Do you use logging in your ETL and SSIS packages?</a></p>
               <p> The last thing you can do, and at this point the data is in the cube already, is to hide these errors with "unknown members".</p>
                <dl class="image">
                    <dt><img src="images/HideError.jpg" alt="Hide error with 'unknow members' " /></dt>	    			    
                </dl>
            </li>
            <li>
              <h2><a name="AddDiagram"></a>Do you add a diagram for each fact table</h2>
              <p>Adding a diagram helps users clearly see which dimensions are related to which fact tables.</p>
                <dl class="badImage">
                    <dt><img src="images/NoDiagram.jpg" alt="We need a diagram to help us see how facts are related to dimensions." /></dt>
                    <dd>Figure: Bad Example - There are no diagrams at all to help the user see how facts are related to dimensions</dd>	    			    
                </dl>
                <dl class="goodImage">
                    <dt><img src="images/Diagram.jpg" alt="You can see the diagram." /></dt>
                    <dd>Figure: Good Example - There is a diagram for each fact table</dd>	    			    
                </dl>
            </li>
            
		</ol>
		</div>

			<h2><a name="AcknowledgementsLikeThis"></a>Acknowledgements</h2>
			<p>
            <a href="/people/adam-cogan">Adam Cogan</a><br />
            <a href="http://sharepoint.ssw.com.au/AboutUs/Employees/Pages/Eric.aspx">Eric Phan</a>
            </p>
</asp:content>