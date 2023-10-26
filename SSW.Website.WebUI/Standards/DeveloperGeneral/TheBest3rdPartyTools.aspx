<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW Introduction to The Best 3rd Party Tools"  %>
<%@ Register TagPrefix="ssw" TagName="RandomTestimonial" Src="~/Components/RandomTestimonial.ascx" %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				<ssw:randomtestimonial id="testimonial" runat="server" display="TopCommon" CategoryID="10" />
			
		<p>
			Microsoft tools are the most important tools I have. I spend most of my time using Outlook, Visual Studio.NET, and SQL Server Management Studio. However Microsoft tools don't do everything. Rather than spending my time recreating the 
			wheel, I am always on the look out for non-Microsoft options or extensions that will save me time. After all, a spanner might get a 
			plumber through 90% of jobs, but he'll get stuck on the last 10% if he doesn't carry anything else. I carry these tools in my Tool 
			Box every day. I hope you find them useful.
		</p>
		<p>
			Note: I have included a few of SSW's utilities - but not for the purpose of plugging them. Originally 
			this was an internal document for our new developers to make them know the non Microsoft software 
			we recommended they use. I was going to remove but I think they add value.... 
		</p>
    <p>Do you agree with them all? Are we missing some?
  
     <a href="/SSW/Employees/EmployeesProfile.aspx?EmpID=AC" target="_blank">
    Let Adam know</a> what you think.</p> 
		
		<div class="TableOfContents">		
			<h3>The Best Third Party Tools&nbsp;&nbsp; </h3>
			<ol>	
			
				<li><a href="OutlookTools.aspx">The Best Tools for Outlook</a></li>
				<li><a href="netTools.aspx">The Best Tools for .NET (General)</a></li>
				<li><a href="WebdevelopmentTools.aspx">The Best Tools for Web Development</a></li>
				<li><a href="WebdevelopmentToolsASPNET.aspx">The Best Tools for Web Development (ASP.NET Controls)</a></li>
				<li><a href="WinformControls.aspx">The Best Tools for Windows Forms</a></li>
				<li><a href="WindowsdevelopmentTools.aspx">The Best Tools for Windows Forms Development</a></li>
				<li><a href="SQLservertools.aspx">The Best Tools for SQL Server</a></li>
				<li><a href="Accesstools.aspx">The Best Tools for Access</a></li>
				<li><a href="InternetexplorerTools.aspx">The Best Tools for Internet Explorer</a></li>
				<li><a href="WindowsTools.aspx">The Best Tools for Windows</a></li>			
				<li><a href="networkTools.aspx">The Best Tools for Network</a></li>
				<li><a href="ExchangeServer.aspx">The Best Tools for Exchange Server</a></li>
				<li><a href="PocketPCTools.aspx">The Best Tools for Pocket PC</a></li>
				<li><a href="LaptopTools.aspx">The Best Tools for Laptop</a></li>
				<li><a href="Websites.aspx">The Best Websites</a></li>
				<li><a href="SilverlightTools.aspx">The Best Tools for Silverlight Development</a></li>
                <li><a href="TFSTools.aspx">The Best Tools for TFS</a></li>
			</ol>	
		</div>
		<a name="HowToGetMyToolsConsidered"></a><h3>Am I missing any tools on this list?</h3>
		<p>	I only know what I know. I love the opportunity to review great products and speak about them at developer conferences and user groups. Feel free to <a href="/SSW/Employees/EmployeesProfile.aspx?EmpID=AC">email Adam</a> any ones I have missed.
		</p>

<h2>Links</h2>
		    <ul>
              <li>
			<a href="/ssw/Redirect/ScottHanselmanPowerToolList.htm">Scott Hanselman's 2005 Ultimate Developer and Power Users Tool List</a><img alt="You are going to a site outside of SSW" src="/ssw/Images/LeaveSite.gif" width="17" height="11">
              </li>

            </ul>

	<h2>Acknowledgements</h2>	
			
			<p>
				<a href="/SSW/Employees/EmployeesProfile.aspx?EmpID=AC" target="_blank">Adam Cogan</a><br/>				      
			</p>


	</asp:content>