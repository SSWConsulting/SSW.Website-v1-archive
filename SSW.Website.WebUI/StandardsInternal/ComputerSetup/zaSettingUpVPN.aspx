<%@ Page  Language="C#" AutoEventWireup="false"  MasterPageFile="~/Masters/Default.master" Title="Setting up VPN Access"  %>

<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsInternalXmlSiteMapProvider">
        </asp:SiteMapPath>
    </p>
				
<h2></a>Network Administrators</h2>
<p> In order to setup VPN Access for your computer on the network. Several settings 
  need to be configured. We need to configure your Active Directory account 
  on the server to allow VPN Access. To do this: 
<ol>
				<li>Open Active Directory Users and Computers.</li>
				<li>Right-click on the User and select properties.</li>
				<li>Select the 'Dial-in' Tab and select the 'Allow Access' option button as per below.</li> 
				<dl class="image">
				    <dt><img src="Images/DialInPropertiesTab.gif" alt="Dial-In properties" width="404" height="520"></dt>
				</dl>
				<li>Click OK to confirm.</li>
			</ol>
		</p>
    <h2></a>For Client PCs (Windows XP)</h2>		
    <p> On the client PC you need to create a VPN Connection. To do this: 
        <ol>
			<li>Go Start -> My Network Places.</li>
			<li>Click on View Network Connections.</li>
			<li>Click on 'Create a New Network Connection'.</li>
			<dl class="image">
				<dt><img src="Images/VPNStartScreen.gif" alt="VPN start screen" width="503" height="392"></dt>
			</dl>
			<li>Select the 'Connect to the network at my workplace' option button.</li>
			<dl class="image">
				<dt><img src="Images/NetworkConnectionType.gif" alt="Network connection type" width="503" height="392"></dt>
			</dl>
			<li>Select the 'Virtual Private Network connection' option button.</li>
			<dl class="image">
				<dt><img src="Images/VirtualPrivateNetwork.gif" alt="Connection establishing" width="503" height="392"></dt>
			</dl>
			<li>Give the VPN Connection a name.</li>
			<dl class="image">
				<dt><img src="Images/VPNConnectionName.gif" alt="VPN Connection name" width="503" height="392"></dt>
			</dl>
			<li>Select the 'Do not dial the initial connection' option button.</li>
			<dl class="image">
				<dt><img src="Images/VPNDialConnection.gif" alt="Options" width="503" height="392"></dt>
			</dl>
			<li>Specify the host IP to be mail.ssw.com.au</li>	
			<dl class="image">
				<dt><img src="Images/VPNHostIP.gif" alt="Specify the IP" width="503" height="392"></dt>
			</dl>
			<li>Choose who will use the connection.</li>
			<dl class="image">
				<dt><img src="Images/VPNChooseWhoseUse.gif" alt="Choose users" width="503" height="392"></dt>
			</dl>
			<li>Now we are finished creating the VPN Connection.</li>
			<dl class="image">
				<dt><img src="Images/VPNFinishScreen.gif" alt="Finish screen" width="503" height="392"></dt>
			</dl>
		</ol>
	</p>
	<p>
		Finally you will need to change some settings. To do this:
			
		<ol>
			<li>Right-click on the VPN Connection and choose Properties.</li>
			<li>Select the Options Tab and check the 'Include Windows logon Domain' checkbox.</li>
			<dl class="image">
				<dt><img src="Images/VPNOptionsPropertiesTab.gif" alt="VPN options proeprties tab" width="367" height="450"></dt>
			</dl>
			<li>Select the Networking Tab, select the Internet TCP/IP option and click the 'Properties' button.</li>
			<dl class="image">
				<dt><img src="Images/VPNNetworkPropertiesTab.gif" alt="VPN network properties tab" width="367" height="450"></dt>
			</dl>
			<li>Click on the 'Advanced' button and leave the 'Use Remote Gateway' checkbox.
			If you have problems then try and uncheck this box.</li>
			<dl class="image">	
				<dt><img src="Images/AdvancedTCPIPProperties.gif" alt="Advanced TCP/IP properties" width="404" height="488"></dt>
			</dl>
			<li>Add the DNS suffix sydney.ssw.com.au</li>
			<dl class="image">
			    <dt><img src="Images/TCPIPDNSProperties.gif" alt="TCP/IP DNS properties" width="404" height="488"></dt>
			</dl>
			<li>Click OK twice.</li>  	
		</ol>
	</p>
	<p>You should now be able to use VPN to connect to the office.</p>
    <h2></a>For Client PCs (Windows 7)</h2>		
    <p> On the client PC you need to create a VPN Connection. To do this: 
        <ol>
			<li>Go Start -> Control Panel.</li>
			<li>Click on Network and Sharing Center.
			    <dl class="image">
				    <dt><img src="Images/NetworkAndSharingCenter.gif" alt="Network and Sharing Center"></dt>
			    </dl>
			</li>
			<li>Click on 'Set up a new connection or network'.
			    <dl class="image">
				    <dt><img src="Images/SetupANewConnection.gif" alt="Set up a new connection or network"></dt>
			    </dl>
			</li>
			<li>Click on 'Connect to a workplace'.
			    <dl class="image">
				    <dt><img src="Images/ConnectToAWorkplace.gif" alt="Connect to a workplace"></dt>
			    </dl>
			</li>
			<li>Select the 'No, create a new connection'.
			    <dl class="image">
				    <dt><img src="Images/CreateANewConnection.gif" alt="No, create a new connection"></dt>
			    </dl>
			</li>
			<li>Click on 'Use my Internet Connection (VPN)' then Next.
			    <dl class="image">
				    <dt><img src="Images/UseMyInternetConnection.gif" alt="Use my Internet Connection(VPN)"></dt>
			    </dl>
			</li>
			<li>Specify "mail.ssw.com.au" as an Internet address and "SSW-VPN" as a Destination name and click Next.
			    <dl class="image">
				    <dt><img src="Images/TypeInternetAddress.gif" alt="Type the Internet address"></dt>
			    </dl>
			</li>
			<li>Type username and password and Domain (SSW2000) and click Connect.	
			    <dl class="image">
				    <dt><img src="Images/TypeUserName.gif" alt="Type your user name and password"></dt>
			    </dl>
			</li>
		</ol>
	</p>
	<p>You should now be able to use VPN to connect to the office.</p>
</asp:content>