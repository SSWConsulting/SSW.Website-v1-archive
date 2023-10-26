<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="Apple Suggestions"  %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath></p>
        <asp:label id="lblWelcome" runat="server"></asp:label>

<div class="TableOfContents">
    <h3>Apple Suggestions</h3>
	<ol> 
			<li><a href="#Update-quickly">Help me update quickly</a></li>
    </ol>
</div>
	<ol>
	    <li>
            <h2><a name="Update-quickly"></a>Help me update quickly</h2>
            <p>#suggestion for #apple - I have just updated 2 #ipads and an #iphone. It downloads these huge files each time.</p>
            <p>This is an unnecessary 593MB</p>
            <p>If you agree<!--SSW Link Auditor - Ignore begin--><a href="http://twitter.com/#!/AdamCogan/statuses/97219273080061952" target="_blank">Retweet</a><!--SSW Link Auditor - Ignore end--></p>
            <dl class="Image">
                <dt><img src="images/apple-update.jpg" alt="Figure: Very surprised Apple does not cache the download, in case you connect a 2nd device" /></dt>
                <dd>Figure: Very surprised Apple does not cache the download, in case you connect a 2nd device</dd>
            </dl>
        </li>
        
	</ol>
		
</asp:content>