<%@ Page Language="C#" AutoEventWireup="false" Codebehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="Lessons Learned Writing Mobile Sites" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="Images/thumbs/thumb-webinar-dinoesposito.jpg" alt="Lessons Learned Writing Mobile Sites by Dino Esposito" />
	<h1 style="font-size: 34px;">Lessons Learned Writing Mobile Sites by Dino Esposito</h1>
	<h2>Multi-device views without extra costs</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
	<h2>Writing Mobile Sites:</h2>
	<ul>
        <li><a href="#Details">Webinar Details</a></li>
		<li><a href="#Register">Register</a></li>
	</ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
<div id="oversizeMaincontent">

	<div class="section"> 
		<p>Too many web sites are neither optimized nor adapted to render well on mobile devices and too many developers think it only needs some CSS.</p>
        <p>Responsive Web Design (RWD) delivers multi-device views without extra costs, but what if you have workflows to implement or different use-cases? The session discusses a few real examples where RWD is not enough and server-side detection is necessary.</p>
	</div>

	<div class="section">
		<h2><a name="Details"></a>Webinar Details</h2>
		<table class="beautyTable">
		  <tr class="odd">
			<td>Date:</td>
			<td>15th of October</td>     
		  </tr>
		  <tr>
			<td>Time:</td>
			<td>4:00pm - 5:00pm AEDT</td>
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
    <div style="width:100%; text-align:left;" ><iframe  src="https://www.eventbrite.com.au/tickets-external?eid=7941580481&ref=etckt&v=2" frameborder="0" height="214" width="100%" vspace="0" hspace="0" marginheight="5" marginwidth="5" scrolling="auto" allowtransparency="true"></iframe><div style="font-family:Helvetica, Arial; font-size:10px; padding:5px 0 5px; margin:2px; width:100%; text-align:left;" ><a style="color:#ddd; text-decoration:none;" target="_blank" href="http://www.eventbrite.com.au/r/etckt">Event management</a><span style="color:#ddd;"> for </span><a style="color:#ddd; text-decoration:none;" target="_blank" href="https://www.eventbrite.com.au/event/7941580481?ref=etckt">Lessons Learned Writing Mobile Sites - presented by SSW & Dino Esposito</a> <span style="color:#ddd;">powered by</span> <a style="color:#ddd; text-decoration:none;" target="_blank" href="http://www.eventbrite.com.au?ref=etckt">Eventbrite</a></div></div>

</div>               	
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