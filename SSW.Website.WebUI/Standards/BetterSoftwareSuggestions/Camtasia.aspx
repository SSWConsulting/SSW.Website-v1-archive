<%@ Page Language="VB" MasterPageFile="~/Masters/Default.master" AutoEventWireup="false" Title="Camtasia Suggestions"  %>

<asp:content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <p><asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWStandardsXmlSiteMapProvider"></asp:SiteMapPath></p>
        <asp:label id="lblWelcome" runat="server"></asp:label>

<div class="TableOfContents">
    <h3>Camtasia Suggestions</h3>
	<ol> 
			<li><a href="#Acceleration">Suggestions for Tools | Options | Acceleration</a></li>
            <li><a href="#Dont-open-Camtasia-Studio">Don't open Camtasia Studio when I am on recording</a></li>
            <li><a href="#Avoid-question">Help me avoid a question I don't know the answer to</a></li>
            <li><a href="#DontAutomaticallyOpen">Don't automatically open Camtasia Studio</a></li>
    </ol>
</div>
	<ol>
	    <li>
            <h2><a name="Acceleration"></a>Suggestions for Tools | Options | Acceleration</h2>
            <ol>
                <li>I don't like the negative/backwards 'Disable' label - it is hard to read</li>
                <li>Too much text on the messagebox</li>
                <li>I don't know what is recommended - please make that clear. Either add text "(recommended)" or add a button "Reset to Defaults"</li>
            </ol>
            <dl class="Image">
                <dt><img src="images/horrible-message.jpg" alt="Camtasia horrible message" /></dt>
                <dd>Figure: Camtasia horrible message</dd>
            </dl>
        </li>
        
        <li>
            <h2><a name="Dont-open-Camtasia-Studio"></a>Don't open Camtasia Studio when I am on recording</h2>
            <p>Now I am only using Recorder &#8211; I don't expect Studio to be involved &#8211; but at the end it opens up!</p>
            <p>Suggestions:</p>
            <ol>
                <li>When it finishes it should not open up the studio</li>
                <li>When I don&#8217;t make *any* changes - it should not ask me to save</li>
            </ol>
            <dl class="Image">
                <dt><img src="images/Camtasia-save-screen.jpg" alt="Camtasia save screen" /></dt>
                <dd>Figure: Camtasia 'Save' screen</dd>
            </dl>
        </li>

        <li>
            <h2><a name="Avoid-question"></a>Help me avoid a question I don't know the answer to</h2>
            <p>Please give me a cancel button - I don't feel qualified to answer this question... and I am forced to</p>
            <dl class="Image">
                <dt><img src="images/camtasia-video-size.jpg" alt="Camtasia Video Size Screen" /></dt>
                <dd>Figure: Please give me a cancel button</dd>
            </dl>
        </li>

        <li>
            <h2><a name="DontAutomaticallyOpen"></a>Don't automatically open Camtasia Studio</h2>
            <dl class="Image">
                <dt><img src="images/camtasia-auto-open.jpg" alt="Checkbox dialog to automatic opening" /></dt>
                <dd>Figure: Add a checkbox on this dialog "Don't automatically open Camtasia Studio"</dd>
            </dl>
        
        </li>

	</ol>
		
</asp:content>