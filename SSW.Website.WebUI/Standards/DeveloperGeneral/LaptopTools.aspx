<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="SSW - The Best 3rd Party Laptop Tools"  %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
	<div class="TableOfContents">	
	<h3>Laptop Tools</h3>
	<ol>	
		<li><a href="#BatteryMonitor">Laptop Battery Monitor</a></li>
	</ol>
	</div>
    <div id="mainContent">
        <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('496E666F407373772E636F6D2E61753F5375626A6563743D54686525323042657374253230496D6167652532304C6962726172696573')">
        Let us know</a> what you think.</p> 
        <p>
         would you like your software to be considered for this list?  
            <a href="TheBest3rdPartyTools.aspx#HowToGetMyToolsConsidered">Give us your details</a>.
        </p>

	    <ol>
	        <li>
		        <a name="BatteryMonitor"></a>
                <h2>Laptop Battery Monitor</h2>
		        <p>
			        Do you have a tool that can alert if your battery charge drops under a predefined percentage?
			        There is a tool called 
			        <a href="/ssw/Redirect/LaptopBatteryMonitor.htm" target="_blank">Laptop Battery Monitor</a>
			        <img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11"> 
			        has these wonderful features:
			        <ul>
				        <li>Sound alerts when charging starts/stops, battery is full charged, or battery charge drops under a predefined percentage</li>
				        <li>Display remaining time until the battery is fully discharged</li>
				        <li>Display remaining time until the battery is fully charged</li>
				        <li>Automaticly starts when you turn on your laptop</li>
			        </ul>
		        </p>
    			
		        <div class="imageHolder">
			        <img src="Images/BatteryLevel.gif" alt="Batter Level">
			        <img src="Images/AlertOptions.gif" alt="Alert Options">
			        <p>
			        <span class="Caption">Figure: Battery Monitor</span>				
			        </p>
		        </div>
		        
		        See our <a href="../BetterSoftwareSuggestions/Vista.aspx#BatteryMonitor">Suggestion for Vista Battery Monitor</a>.
		    </li>
        </ol>
    </div>
	<h2>Acknowledgements</h2>	
		
		<p>
			<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=DDK">David Klein (Icon Experience)</a><br>
		</p>

</asp:content>