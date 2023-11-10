<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="Dev Superpowers – Project Management with Visual Studio Online" %>

<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ContentPlaceHolderID="Slider" runat="server">
    <img src="/ssw/events/webinars/images/DevSuperPowers-VisualStudio.png" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="/ssw/NETUG/SSWUpdate/Images/DevSuperpowers-Thumb.png" alt="Dev Superpowers - ASP .NET MVC with David Burela" />
    <h1 style="font-size: 34px;">Dev Superpowers – Project Management with Visual Studio Online with Damian Brady</h1>
    <h2>Getting started with Microsoft ASP.NET MVC5</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>Project Management with VS Online:</h2>
    <ul>
        <li><a href="http://tv.ssw.com/devsuperpowers">Dev Superpowers</a></li>
        <li><a href="#Details">Video</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <div id="oversizeMaincontent">

        <div class="section">
            <p>In this session, we’ll look at how to use Visual Studio Online to manage all aspects of your development project. Topics we’ll cover include:</p>

            <ul>
                <li>Getting started with visualstudio.com</li>
                <li>Source control features</li>
                <li>Agile project management features</li>
                <li>Team collaboration features</li>
                <li>Development and testing</li>
                <li>Application deployment</li>
                <li>Monitoring your application</li>
                <li>Pricing</li>
            </ul>
        </div>

        <div class="section">
            <h2><a name="Details"></a>Video</h2>
            <div class="eric-video">
                <div class="video-player" data-id="Y0vqK3L6_Us" data-youkuid=""></div>
            </div>
            <%--<iframe width="560" height="315" src="//www.youtube.com/embed/Y0vqK3L6_Us?rel=0" frameborder="0" allowfullscreen></iframe>--%>
        </div>

        <%--<div class="section">
		<h2><a name="Details"></a>Webinar Details</h2>
		<table class="beautyTable">
		  <tr class="odd">
			<td>Date:</td>
			<td>Thursday 25th of September</td>     
		  </tr>
		  <tr>
			<td>Time:</td>
			<td>11:00am - 12:30pm AEST</td>
		  </tr>
		  <tr class="odd">
			<td>Cost:</td>
			<td>No Charge</td>
		  </tr>
		  <tr>
			<td>Presenter:</td>
			<td>Damian Brady</td>
		  </tr>
		</table>  
	 </div>
        		
    <h2><a name="Register"></a>Register</h2>
<div style="width:100%; text-align:left;" ><iframe  src="https://www.eventbrite.com.au/tickets-external?eid=11757247243&ref=etckt" frameborder="0" height="214" width="100%" vspace="0" hspace="0" marginheight="5" marginwidth="5" scrolling="auto" allowtransparency="true"></iframe><div style="font-family:Helvetica, Arial; font-size:10px; padding:5px 0 5px; margin:2px; width:100%; text-align:left;" ><a style="color:black; text-decoration:none;" target="_blank" href="http://www.eventbrite.com.au/r/etckt">Sell Tickets</a> <span style="color:black;">through</span> <a style="color:black; text-decoration:none;" target="_blank" href="http://www.eventbrite.com.au?ref=etckt">Eventbrite</a></div></div>--%>
    </div>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
    <div class="section">
        <h3>About the presenter</h3>
        <p>
            <img src="https://sharepoint.ssw.com.au/AboutUs/Employees/PublishingImages/Damian_profile_thumb.JPG" width="75" class="thumbnail" />
            <strong>Damian Brady</strong><br />
            Damian Brady is a Microsoft MVP in Application Lifecycle Management and a co-author of the <a href="http://brdy.in/ProTFS2013">"Professional Team Foundation Server 2013"</a>book from Wiley. He's a Solution Architect and State Manager for SSW Brisbane, and also runs the Brisbane .Net User Group and the annual DDD Brisbane conference. Damian specializes in Team Foundation Server and ASP.NET development and he's a regular speaker at User Groups and conferences in Australia and overseas.
        </p>
        <p>His Twitter handle is <a href="https://twitter.com/damovisa">@damovisa</a> and you can read his blog at <a href="http://www.damianbrady.com.au">http://www.damianbrady.com.au</a></p>
    </div>
</asp:Content>
