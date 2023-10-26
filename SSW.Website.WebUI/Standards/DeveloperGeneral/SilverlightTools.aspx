<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="The Best Tools for Silverlight Development"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
		<div class="TableOfContents">
	
		<h3>The Best Tools for Silverlight Development</h3>
		<ol>
			<li><a href="#SilverlightSpy">Silverlight Spy</a></li>
			<li><a href="#TestingTools">Telerik's automated testing tools </a></li>
		</ol>
		</div>
<div id="mainContent">			
    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D54686525323042657374253230546F6F6C73253230466F72253230576562253230466F726D73253230446576656C6F706D656E74')">
    Let us know</a> what you think.</p> 

<p>
 would you like your software to be considered for this list?  
	<a href="TheBest3rdPartyTools.aspx#HowToGetMyToolsConsidered">Give us your details</a>.
</p>
		<ol>
		<li>
			<a name="SilverlightSpy"></a>
			<h2>Silverlight Spy</h2>
			<p>This is a great tool; it is the Firebug for Silverlight. This tool allows you to inspect elements, styles and configuration information for your Silverlight/XBAP applications.</p>
			<p>Like <a href="/ssw/Redirect/snoop.htm">Snoop</a> <img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11">for WPF				
			</p>
			<p>Like <a href="/ssw/Redirect/firebug.htm">Firebug</a><img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11">	 for CSS			
			</p>
			<p>Download here<a href="/ssw/Redirect/silverlightdownload.htm"> http://silverlightspy.com/silverlightspy/download-silverlight-spy</a> <img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11"></p>
			<dl class="image">
			<dt>
			<img src="Images/Conquest.jpg" alt="Control + Shift click the object"/>
			</dt>
			<dd>Figure: What is this space for?  Control + Shift click the object </dd>
			</dl>
			<dl class="image">
			<dt>
			<img src="Images/SilverlightSpyEvaluation.jpg" alt="You can see the rectangle"/>
			</dt>
			<dd>Figure: Then you see it is the rectangle</dd>
			</dl>
		</li>
		<li>
		  <h2><a name="TestingTools"></a>Telerik's automated testing tools</h2>
		  <p>Today in 2010 Microsoft’s Test Manager is great for Windows and Web apps, but there is a glaring hole. No support for Silverlight. You need to try Telerik’s WebUI Test Studio. It is heaps better than Test Manager + the Coded UI tests. <a href="http://www.telerik.com/automated-testing-tools">http://www.telerik.com/automated-testing-tools</a></p>
		  <ul>
		    The key features are:
		    <li>It generates much less code (4 steps instead of UIMap.cs, etc...)</li>
		    <li>Easy recording (a very nice UI)</li>
		    <li>You can playback in a different browser</li>
		    <li>Faster</li>		    
		  </ul>
		  <ol>
		    So give it a try:
		    <li>You Download the standalone tool at <a href="http://www.telerik.com/download/teststudio">http://www.telerik.com/download/teststudio</a></li>
		    <li>Connect to a Silverlight site</li>
		    <li>Record Silverlight</li>
		    <li>Generate code</li>
		    <li>and you're done </li>
		    <li>Decide yourself if this is better than Microsoft Test Manager (MTM)</li> 		    		   
		  </ol>
		</li>	

		
	</ol>
</div>	
	
		<h2>Acknowledgements</h2>	
			
			<p>
				<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br/>
			</p>



		</asp:content>