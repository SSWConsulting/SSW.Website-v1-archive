<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Microsoft Accounting Packages | SSW Consulting - Sydney, Brisbane, Melbourne" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>Microsoft Accounting Packages - the future</h1>
    <h2>Pick the winning technology</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>Accounting Packages:</h2>
    <ul>
        <li><a href="#Overview">Overview</a></li>
        <li><a href="#Comparison">Comparison</a></li>
        <li><a href="#TheFuture">The Future</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
<p>        
	<asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWXmlSiteMapProvider"></asp:SiteMapPath>
</p>
    <div class="section">
        <h2>
            <a name="Overview"></a>Overview</h2>
	<p>
		Anyone else confused about Microsoft's intentions as far as accounting packages go?
	</p>
	<p>
		Microsoft has acquired multiple Enterprise accounting packages over the years: 
		Great Plains, Navision, AX and Solomon and has has rebranded these packages
		into <a href="/SSW/Redirect/Microsoft/Dynamics.htm" target="blank">'Microsoft Dynamics'</a> <img src="/SSW/Images/LeaveSite.gif" width="17" height="11">. 
	</p>
	<p>	
		Having so many options obviously isn't sustainable. One package has to win in the end. 
		This is my spin on the main packages available and which one will win. 
    </p>
    </div>
    <div class="section">
        <h2>
            <a name="Comparison"></a>Comparison</h2>
<p>
			<table class="outline">
			<tbody>
				<tr>
					<th scope="row"><strong>Product</strong></th>
					<th scope="row"><strong>Origin</strong></th>
					<th scope="row"><strong>Market Share (Est.)</strong></th>
					<th scope="row"><strong>Scalability</strong></th>
					<th scope="row"><strong>Integration with CRM?</strong></th>
					<th scope="row"><strong>Customisation</strong></th>
				</tr>
				<tr>
					<td>
						Dynamics GP (Great Plains)
					</td>
					<td>
						Fargo, USA
					</td>
					<td>
						45%
					</td>
					<td>
						Max 1000 users
					</td>
					<td>
						Integrates with CRM
					</td>
					<td>
						Customizable with Modifier with VBA, Dexterity if required
					</td>
				</tr>
				<tr>
					<td>
						Dynamics NAV (Navision)
					</td>
					<td>
						Denmark
					</td>
					<td>
						40%
					</td>
					<td>
						Max 200 users
					</td>
					<td>
						CRM connector coming
					</td>
					<td>
						Customisable using c/side in the 4GL development system
					</td>
				</tr>
				<tr>
					<td>
						Dynamics AX (Axapta)
					</td>
					<td>
						Denmark
					</td>
					<td>
						10%
					</td>
					<td>
						Max 3000 users
					</td>
					<td>
						Option to connect to CRM, v5 will integrate with Workflow and PerformancePoint.
					</td>
					<td>
						Currently customisable with A++ (very similar to C#), in V6 A++ will be gone, replaced
						with C#, and be fully customisable within the Visual Studio shell. 
					</td>
				</tr>
				<tr>
					<td>
						Dynamics SL (Solomon)
					</td>
					<td>
						USA
					</td>
					<td>
						5%
					</td>
					<td>
						Small team only
					</td>
					<td>
						No integration with CRM (integrates with Project)
					</td>
					<td>
						Customizable Solomon Tools for Visual Basic and Customization Manager with VBA
					</td>
				</tr>
			</tbody>
			</table>
</p>
    </div>
    <div class="section">
        <h2>
            <a name="TheFuture"></a>The Future</h2>
        
                            <h3>
                               Microsoft AX</h3>
             
<p>
	My belief is that AX will win. It is has an excellent standard of architecture and is more flexible for 
	end users. Navision might be the prettiest, but functionally it is an extremely weak implementation. AX's future capacity for 
	customisation with C# swings it directly into the mainstream, ensuring it will be picked up by businesses 
	and developers. AX's price, though, at around $6000 a user, keeps it in the large corporate range.
</p>                            
                        
    </div>
    <div class="section">
    <h2>Who sells what?</h2>

            <ul>
                <li>Eclipse Computing – sell all AX, GP and Nav. Navision especially if it’s a wine vertical, mining verticle then AX. </li>
                <li>Professional Advantage - sell AX and GP</li>
                <li>Oakton - sell only GP</li>
                <li>Fujitsu - sell only AX</li>
                <li>SSW - sell only AX</li>
            </ul>

        </div>   
        <div class="section">
        <h2>
            Why didn't MS start a new package from scratch?
        </h2>
    
        <p>
            Building a whole new application from scratch would mean a long time from conception to release. Even then Version 1 would 
            only be targeted at low-end functionality users with more functionality added over time. And what would Microsoft's
            big ISV partners sell while they were waiting for the new app to be ready for deployments in corporations? Microsoft 
            knows better than to cut revenue from partners.
        </p>
        </div>
    
    <div class="section">
        <h2>
            <a name="getstarted"></a>How to get started</h2>
        <p>
            To find out if a AX based solution is right for your business, give us a call on
            <strong>+61 2 9953 3000</strong> to get started!
        </p>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server"></asp:Content>
