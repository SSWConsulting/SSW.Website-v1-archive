<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="The Best Tools for Windows Forms Development"  %>


<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				
		
	
		<div class="TableOfContents">
	
		<h3>The Best Tools for Windows Forms Development</h3>
		<ol>
			<li><a href="#WiseOrInstallShield">Wise for Windows Installer or InstallShield</a></li>
			<li><a href="#Microtools">Microtools Access Whiz</a></li>
		</ol>
		</div>
			
    <p>Do you agree with them all? Are we missing some? <a href="javascript:sendEmail('6D61696C746F3A496E666F407373772E636F6D2E61753F5375626A6563743D54686525323042657374253230546F6F6C73253230466F7225323057696E646F7773253230466F726D73253230446576656C6F706D656E74')">
    Let us know</a> what you think.</p> 

<p>
 Would you like your software to be considered for this list?  
	<a href="TheBest3rdPartyTools.aspx#HowToGetMyToolsConsidered">Give us your details</a>.
</p>

		<ol>
		<li>
			<a name="WiseOrInstallShield"></a> 
			<h2>Wise for Windows Installer</h2>
		
			There are two ways of creating a setup installation.
				<ol>
					<li>
						The old way is via a script-based system, which is basically a batch file system, 
						and defines step by step what is required (a process-focused approach). Usually this 
						builds a setup.exe file.
					</li>
					<li>
						The newer way is Microsoft's MSI format, which 
						 focus on what needs to be installed (and then how to install them).
						 The new MSI format allows for operations such as repairing a broken 
						 installation without re-installing the entire application. Also each 
						 installation can be treated as a transactional process where failures 
						 can be rolled back object by object.
					</li>
				</ol>
			
				<p>
					Wise and InstallShield both offer commercial products and support for the old 
					script-based approach and the newer MSI approach. We choose Wise over the InstallShield 
					offerings because Wise is traditionally easier to use.
				</p>
				<p>
					If you visit these company's websites, you would notice that they both have a confusing 
					amount of installation products. There are even wizards to help you choose which 
					product is suitable for you! We spend a bit of time evaluating between different 
					installation systems and products, and summarize our requirements and findings here.
				</p>	
		
				<p>
					<b><span class="Caption">1. Wise for Windows Installer (recommended)</span></b>
					<ul type="disc">
						<li>	
							There are supports for importing from .NET projects and solutions, or wise script 
							projects. These can be helpful to kick start your installation file.
						</li>
						<li>			
							Wise products all have Standard, Professional and Enterprise editions.
							We decided on the Professional version, as we want the 'Wise Update' feature, 
							which is not available in the standard edition.&nbsp; The enterprise edition has 
							additional software/setup files/merge module repository suitable for very large 
							enterprise-wide installations, which we find will probably not be useful for us.<br> 
							<a target="_blank" href="/ssw/Redirect/WiseWICompare.htm">Wise product comparisons</a> 
							<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11"></a>
						</li>
					</ul>
				</p>
				<p><img src="Images/WiseInstaller7.JPG" alt="" width="600" ><br><b>Figure: Filling in the Product Details with the Wise for Windows Installer</b></p>
				<p><a href="/ssw/Redirect/Wise.htm" target="_blank">Wise for Windows Installer Web Site</a> 
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11"></a></p>
				<p>
					<b><span class="Caption">2. Wise for Visual Studio.NET</span></b>
					<ul type="disc">
						<li>
							The user interface and functionality are exactly the same as the Windows 
							Installer. This particular Wise product is integrated into Visual Studio.NET.
							It is useful for scanning dependencies, and update project assemblies. Also, 
							the WSI project file can be included in the .NET solution.&nbsp; 
						</li>
						<li>
							The VS.NET integration was also the reason we didn't choose this product, we 
							didn't want a setup software that requires VS.NET to run, nor do we necessarily 
							want people without the plug-in getting a warning when opening a solution with a 
							WSI project.&nbsp; Also, when we start using newer versions of VS.NET (or beta), 
							we don't want the setup program to stop working.
						</li>
					</ul>
				</p>
				<p><b><span class="Caption">3. Nullsoft Scriptable Install System (NSIS) Recommended by <a href="/ssw/Redirect/scotthanselman.htm" target="_blank">Scott Hanselman</a>
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11"></span></b></p>
				<p>
				NSIS (Nullsoft Scriptable Install System) is a professional open source system to create 
				Windows installers. It is designed to be as small and flexible as possible and is therefore 
				very suitable for Internet distribution.
				</p>
				<p><a href="/ssw/Redirect/nsis.htm" target="_blank">Nullsoft Scriptable Install System Website</a>
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11"></p>
				<p><b><span class="Caption">4. Windows Installer XML (WIX) Recommended by <a href="/ssw/Redirect/chriskinsman.htm" target="_blank">Chris Kinsman</a>
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11"></span></b></p>
				<p>
				The Windows Installer XML (WiX) is a toolset that builds Windows installation packages from XML 
				source code. The toolset supports a command line environment that developers may integrate 
				into their build processes to build MSI and MSM setup packages.
				</p>
				<p><a href="/ssw/Redirect/wix.htm" target="_blank">Windows Installer XML Website</a>
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11"></p>
				<p><b><span class="Caption">5. Macrovision FLEXnet Installshield</span></b></p>
				<p>
				InstallShield comes with time saving InstallScript enhancements, allowing you to 
				quickly and easily customize any part of your installation, including the user-dialog 
				sequence, file transfer, reboot and even uninstallation. Possibly the best feature of 
				InstallShield is its support for the latest beta of Microsoft Windows Vista, including 
				Internet Explorer 7, Windows Installer 4 and other exciting new technologies. This means 
				you can start working with Vista now, by building your installation to be compatible with 
				the current beta. InstallShield also minimizes reboots through the Restart Manager and 
				gives you more direct control of setup prerequisites.
				</p>
				<p><a href="/ssw/Redirect/macrovisioninstallshield.htm" target="_blank">Macrovision FLEXnet Installshield Website</a>
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11"></p>
			<p>Please be aware that after our own trials of a number of 
				setup package creation applications, 
				at SSW we choose to use Wise For Windows Installer for all of 
				our Windows projects' setup files.</p>
			<p><b>Note</b>: That for <b>web</b> projects we avoid elaborate setup packages 
			altogether. See our 
			<a href="/ssw/Standards/Rules/RulesToBetterSetups.aspx#AvoidMSIOnWeb">
			Rules To Better Setups</a> for our reason why.</p>
		</li>
		<li><a name="Microtools"></a>
			<h2>Microtools Access Whiz</h2>
			
			<p>Microtools' Access Whiz transforms your Access forms & reports into manageable .NET forms and Crystal Reports. 
			It is is a time-saving Access to VB .NET Windows application conversion tool. It will generate VB .NET project with easy, readable code and minimize your conversion efforts and costs.</p>
			<p><img src="Images/microtoolsconverter.jpg" width="600" height="421">
			<BR>
				<span class="Caption">Figure: Microtools Access Whiz</span>
			<br>
				<a href="/ssw/Redirect/microtools.htm" target="_blank">Microtools Web Site</a>
				<img src="/ssw/Images/LeaveSite.gif" alt="Leaving SSW Web Site" width="17" height="11">
			</p>
		</li>
	</ol>
		<h2>Acknowledgements</h2>	
			<p>
				<a href="/ssw/Employees/EmployeesProfile.aspx?EmpID=AC">Adam Cogan</a><br>
			</p>
		</asp:content>