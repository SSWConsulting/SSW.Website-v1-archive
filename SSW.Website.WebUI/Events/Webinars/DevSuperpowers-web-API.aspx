<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="Dev Superpowers - Web API with David Burela" %>

<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ContentPlaceHolderID="Slider" runat="server">
    <img src="/ssw/events/webinars/images/DevSuperPowers-Webapi.png" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="/ssw/NETUG/SSWUpdate/Images/DevSuperpowers-Thumb.png" alt="Dev Superpowers - Web API with David Burela" />
    <h1 style="font-size: 34px;">Dev Superpowers - Web API with David Burela</h1>
    <h2>Adding Web Api to an ASP .NET MVC website</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>Dev Superpowers - Web API with David Burela:</h2>
    <ul>
        <li><a href="http://tv.ssw.com/devsuperpowers">Dev Superpowers</a></li>
        <li><a href="#Details">Video</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <div id="oversizeMaincontent">

        <div class="section">
            <p>You have an existing website but its data is locked up inside of it and not being fully utilised. </p>
            <p>Learn how to expose your data in a standard way with Web Api, making it available for other applications to consume.</p>
            <h2><a name="Details"></a>Video</h2>
            <div class="eric-video">
                <div class="video-player" data-id="lbZMWTizaO4" data-youkuid=""></div>
            </div>
            <%--<iframe width="650" height="366" src="//www.youtube.com/embed/lbZMWTizaO4" frameborder="0" allowfullscreen></iframe>--%>
        </div>

        <%--<div class="section">
		<h2><a name="Details"></a>Webinar Details</h2>
		<table class="beautyTable">
		  <tr class="odd">
			<td>Date:</td>
			<td>Thursday, 26th of June</td>     
		  </tr>
		  <tr>
			<td>Time:</td>
			<td>11:00am - 12:00pm AEST</td>
		  </tr>
		  <tr class="odd">
			<td>Cost:</td>
			<td>No Charge</td>
		  </tr>
		  <tr>
			<td>Presenter:</td>
			<td>David Burela</td>
		  </tr>
		</table>  
	 </div>
        		
    <h2><a name="Register"></a>Register</h2>
<div style="width:100%; text-align:left;" ><iframe  src="https://www.eventbrite.com.au/tickets-external?eid=11599665913&ref=etckt" frameborder="0" height="214" width="100%" vspace="0" hspace="0" marginheight="5" marginwidth="5" scrolling="auto" allowtransparency="true"></iframe><div style="font-family:Helvetica, Arial; font-size:10px; padding:5px 0 5px; margin:2px; width:100%; text-align:left;" ><a style="color:black; text-decoration:none;" target="_blank" href="http://www.eventbrite.com.au/r/etckt">Sell Tickets Online</a> <span style="color:black;">through</span> <a style="color:black; text-decoration:none;" target="_blank" href="http://www.eventbrite.com.au?ref=etckt">Eventbrite</a></div></div>--%>
    </div>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
    <div class="section">
        <h3>About the presenter</h3>

        <p>
            <img src="Images/burelaMVP.png" class="thumbnail" />

            <strong>David Burela</strong><br />

            David Burela is a Microsoft Azure MVP and works as Solution Architect & State Manager for SSW Melbourne.
            He specialises in cloud development & smart client applications. He regularly speaks at user groups and conferences like TechEd Australia.
            Technology learning is a passion, and he just wants to spread knowledge to everyone in the developer community.
        </p>
        <p>David blogs about his latest adventures in coding at <a href="http://davidburela.wordpress.com/">http://davidburela.wordpress.com/</a></p>

    </div>
</asp:Content>
