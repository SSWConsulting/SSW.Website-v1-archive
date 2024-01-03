<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="WhatsApp Suggestions"  %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath></p>
        <asp:label id="lblWelcome" runat="server"></asp:label>

<div class="TableOfContents">
    <h3>WhatsApp Suggestions</h3>
	<ol> 
			<li><a href="#Bip-when-voice-message-is-over">Please let me know when my recording time is up</a></li>
    </ol>
</div>
	<ol>
	    <li>
            <h2><a name="Bip-when-voice-message-is-over"></a>Please let me know when my recording time is up</h2>
            <p>WhatsApp's audio note has a limit of maximum 2 minutes of recording. It should inform the user (by bipping) that the time is up, so people don't keep talking after the recording has stopped.</p>
        </li>
        
	</ol>
		
</asp:content>