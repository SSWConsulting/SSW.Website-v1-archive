<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="RescueTime Suggestions"  %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath></p>
        <asp:label id="lblWelcome" runat="server"></asp:label>

<div class="TableOfContents">
    <h3>RescueTime Suggestions</h3>
	<ol> 
			<li><a href="#No-use-alert">Alert me when no usage for 2 days</a></li>
            <li><a href="#ipad">Support the iPad</a></li>
    </ol>
</div>
	<ol>
	    <li>
            <h2><a name="No-use-alert"></a>Alert me when no usage for 2 days</h2>
            <p>I use a number of pcs and I forget to install it on new VMs.</p>
            <p>Can I get an alert if no usage for 2 days?</p>
        </li>

        <li>
            <h2><a name="ipad"></a>Support the iPad</h2>
            <p>Support the iPad, where I do a lot of browsing</p>
        </li>
        
	</ol>
		
</asp:content>