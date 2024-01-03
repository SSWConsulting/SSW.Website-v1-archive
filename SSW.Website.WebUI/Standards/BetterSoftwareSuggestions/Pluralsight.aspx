<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="Pluralsight Suggestions"  %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath></p>
        <asp:label id="lblWelcome" runat="server"></asp:label>

<div class="TableOfContents">
    <h3>Pluralsight Suggestions</h3>
	<ol> 
			<li><a href="#Need-2-columns">Need 2 columns (started and in progress)</a></li>
    </ol>
</div>
	<ol>
	    <li>
            <h2><a name="Need-2-columns"></a>Need 2 columns (started and in progress)</h2>
            <p>This struck me as wrong</p>
            <ul>
                <li>need 2 columns (started and in progress)</li>
                <li>need a right click 'reset' (which would still show a way of </li>
            </ul>
            <p>The obvious reason of not doing this is piracy (aka developers sharing accounts), but it you have a nice badges/gamification/points/exam story you will stop this as devs wont want their history corrupted.</p>
            <dl class="Image">
                <dt><img src="images/pluralsight-columns.jpg" alt="Figure: I didn't watch more than 10 seconds of this, so I might want to ‘reset’ it" /></dt>
                <dd>Figure: I didn't watch more than 10 seconds of this, so I might want to 'reset' it</dd>
            </dl>
        </li>
        
	</ol>
		
</asp:content>