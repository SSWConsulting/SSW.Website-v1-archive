<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="The Best Tools for Windows Forms Development (Controls)"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>		

			<!--
			This is the main document.
			-->
			
		
      <div class="TableOfContents">
        <h3>The Best Tools for Windows Forms Development (Controls)</h3>
        	<ol>
				<li><a href="#Janus">Janus GridEX</a></li>
				</ol>      
		</div>
    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D54686525323042657374253230546F6F6C73253230466F7225323057696E646F7773253230466F726D73253230446576656C6F706D656E74253230436F6E74726F6C73')">
    Let us know</a> what you think.</p> 

<p>
    Would you like your software to be considered for this list?  
	<a href="TheBest3rdPartyTools.aspx#HowToGetMyToolsConsidered">Give us your details</a>.
</p>
		<ol>
		<li>
			<a name="Janus"></a>
			<h2>Janus GridEX</h2>
		</li>
			<p>
			     The .NET Control DataGridView is almost sufficient for 60% of your needs (see <a href="/ssw/Standards/Rules/RulesToBetterWindowsForms.aspx#KeepDataGrid">
			     Rules To Better Windows Forms</a>). If you still want more we recommend Janus GridEX. The GridEX Control 
			     supports hierarchical display of data and permits 
			     you to create effective "Outlook like" user interfaces while easing 
			     development and maintenance time. The functionality provided by the 
			     control allows you to display, edit, sort, group, filter, manipulate, 
			     summarize, preview and print your data.
			     Standalone MaskEdit, MultiColumn Combo, and UpDown controls are also included.
			</p>
			<p>
				Advantages of Janus GridEX:
			</p>
			<ul>
			    <li>GridEX supports binding to hierarchical DataSets including built-In Grouping (see Figure1)</li>
			    <li>Card View with GridLines and Innerspacing (see Figure2)</li>
			    <li>User Friendly Designer (see Figure3)</li>
			    <li>Includes a good Documentation</li>
			</ul>
			<p>
			    Disadvantage:
			</p>
			<ul>
			    <li>GridEX doesn't support IDataErrorInfo.</li>
			</ul>
			<p>
			    <img src="Images/janus_gridex_v3.gif" alt="" width="600" height="450"><br>
			    <b>Figure1: Binding to Hierarchical DataSets including Grouping.</b>
			</p>
			<p>
			    <img src="Images/janus_gridex_v3_Cardview.gif" alt="" width="543" height="522"><br>
			    <b>Figure2: Janus GridEX Card View with GridLines and Innerspacing.</b>
			</p>
			<p>
			    <img src="Images/janus_gridex_v3_Designerview.gif" alt="" width="666" height="483"><br>
			    <b>Figure3: Change the Properties and more in the GridEX Designer.</b>
			</p>
			<p>
			    <a href="/ssw/Redirect/Janus.htm" target="_blank">Janus GridEX Details</a>
			    <img src="Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11">
			</p><br>
			    Other Grids that we recommend are:
			<p>
			<h3>2. Developer Express XtraGrid</h3>
			<b>Advantages:</b> 
			<ul>
			    <li>Built-in Grouping</li>
			    <li>Full reporting control</li>
			    <li>Top Performance by handling lots of data. See <a href="/ssw/Redirect/CompareGridArticle.htm" target="_blank">performance comparisation with the Grids from Janus, Infragistic and Devexpress.</a> It shows that XtraGrid has a good performance by loading Datas into the Grid and Filtering and it is the fastest by Sorting and Grouping.</li>
			    <li>Skin technology lets you specify the overall painting scheme for the control</li>
			    <li>Source Code is included</li>
			</ul>
			<b>Disadvantage:</b>
			<ul>
			    <li>Documentation could be better.</li>
			</ul></p>
			<p><a href="/ssw/Redirect/Devexpress.htm" target="_blank">Developer Express XtraGrid Details</a>
			<img src="Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11"></p><br>
             <p>
			<h3>3. Infragistics Wingrid</h3>
			<b>Advantages:</b>
			<ul>
			    <li>Support for IDataErrorInfo which displays an error message and tooltip
			    <li>Merge of consecutive cells with the same values so they appear as one cell (less repetition by displaying Data in Wingrid)</li>
			</ul>
			<b>Disadvantages:</b> 
			<ul>
			    <li>The Documentation is poor, which makes it hard to implement for developers</li>
			    <li>Unlogical Method/Property names</li>
			</ul>
			<p><a href="/ssw/Redirect/InfragisticsWingrid.htm" target="_blank">Infragistics Wingrid Details</a>
			<img src="Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11"></p><br>
            <p>
			<h3>4. ComponentOne True DBGrid</h3>
			<b>Advantages:</b>
			<ul>
			    <li>Good Performance</li>
			    <li>XP Themes support</li>
			</ul>
			<b>Disadvantages:</b>
			<ul>
			    <li>Unlogical Method/Property names</li>
			    <li>Hard to use in combination with .NET Grids</li>
			</ul>
			</p>
			<p><a href="/ssw/Redirect/ComponentOne.htm" target="_blank">ComponentOne True DBGrid Details</a>
			<img src="Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11"></p>
		</ol>
				

		<h2>Acknowledgements</h2>
			<p>
                <a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br>
                Lionel Mischler
            </p>
		</asp:content>