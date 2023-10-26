<%@ Page Language="C#" AutoEventWireup="false" Codebehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="The Bitter-sweet Taste of PhoneGap for Mobile Developers" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="Images/thumbs/thumb-webinar-phonegap.jpg" alt="PhoneGap for Mobile Developers by Dino Esposito" />
	<h1 style="font-size: 34px;">The Bitter-sweet Taste of PhoneGap for Mobile Developers by Dino Esposito</h1>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
	<h2>PhoneGap for Mobile Developers:</h2>
	<ul>
        <li><a href="#Details">Webinar Details</a></li>
		<li><a href="#Register">Register</a></li>
	</ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
<div id="oversizeMaincontent">

	<div class="section"> 
		<p>PhoneGap enables developers to build mobile apps for a variety of platforms using web tools and frameworks. 
        PhoneGap just works and delivers all of its promises. However, a PhoneGap application is inherently tied up to the performance of the browser and a 
        relatively device agnostic user interface. Is this a problem? Or is this part, or all, of the solution to the long-standing problem of minimizing 
        costs of multi-platform apps? To properly try to answer the question it is essential to get a deeper grasp of how the PhoneGap platform work and explore 
        its technical details. That would give you a hardly debatable list of pros and cons upon which you can calculate your own tradeoffs. </p>
	</div>

	<div class="section">
		<h2><a name="Details"></a>Webinar Details</h2>
		<table class="beautyTable">
		  <tr class="odd">
			<td>Date:</td>
			<td>5th of December</td>     
		  </tr>
		  <tr>
			<td>Time:</td>
			<td>11:00am - 12:00pm AEDT</td>
		  </tr>
		  <tr class="odd">
			<td>Cost:</td>
			<td>No Charge</td>
		  </tr>
		  <tr>
			<td>Presenter:</td>
			<td>Dino Esposito</td>
		  </tr>
		</table>  
	 </div>
        		
    <h2><a name="Register"></a>Register</h2>
<div style="width:100%; text-align:left;" ><iframe  src="http://www.eventbrite.com/tickets-external?eid=9151587645&ref=etckt&v=2" frameborder="0" height="214" width="100%" vspace="0" hspace="0" marginheight="5" marginwidth="5" scrolling="auto" allowtransparency="true"></iframe><div style="font-family:Helvetica, Arial; font-size:10px; padding:5px 0 5px; margin:2px; width:100%; text-align:left;" ><a style="color:#ddd; text-decoration:none;" target="_blank" href="http://www.eventbrite.com/r/etckt">Online Ticketing</a><span style="color:#ddd;"> for </span><a style="color:#ddd; text-decoration:none;" target="_blank" href="https://www.eventbrite.com.au/e/the-bitter-sweet-taste-of-phonegap-for-mobile-developers-tickets-9151587645?ref=etckt">The Bitter-sweet Taste of PhoneGap for Mobile Developers</a> <span style="color:#ddd;">powered by</span> <a style="color:#ddd; text-decoration:none;" target="_blank" href="http://www.eventbrite.com?ref=etckt">Eventbrite</a></div></div>             	
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
    <div class="section">
        <h3>
            About the presenter</h3>
        <p>
            <img src="Images/desposito.jpg" class="thumbnail" />
            <strong>Dino Esposito</strong><br />
            A long-time trainer and consultant, Dino is the author of many popular books for Microsoft Press for .NET developers.including "<a href="http://shop.oreilly.com/product/0790145336224.do" target="_blank">Architecting Mobile Solutions for the Enterprise</a>" and "<a href="http://shop.oreilly.com/product/0790145336064.do" target="_blank">Programming ASP.NET MVC</a>" both for Microsoft Press. CTO of Crionet, a firm specializing in Web-based and mobile solutions for sport events across Europe <a href="http://www.crionet.com" target="_blank">www.crionet.com</a>, at the moment Dino is also technical evangelist for JetBrains, where he focuses on Android and Kotlin development, and member of the team that manages WURFL—the database of mobile devices used by organizations such as Google and Facebook. Follow Dino through his blog at <a href="http://software2cents.wordpress.com/" target="_blank">software2cents.wordpress.com</a> or at <a href="https://twitter.com/despos" target="_blank">twitter.com/despos</a>.</p>
    </div>
</asp:Content>