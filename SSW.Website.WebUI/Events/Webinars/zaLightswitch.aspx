<%@ Page Language="C#" AutoEventWireup="false" Codebehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="SSW Webinar: The pros and cons of using LightSwitch to speed up your development" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="Images/thumbs/webinar-thumb.jpg" alt="Webinar" />
	<h1>SSW Webinar: The pros and cons of using LightSwitch to speed up your development</h1>
	<%--<h2>What's all the fuss?</h2>--%>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
	<h2>LightSwitch Webinar:</h2>
	<ul>
		<li><a href="#objectives">Webinar Objectives</a></li>
		<li><a href="#when">Webinar Details</a></li>
		<li><a href="#Register">Register</a></li>
	</ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
<div id="oversizeMaincontent">

	<div class="section"> 
		<p>LightSwitch will help developers create prototypes of applications with just a few clicks, but can it assist you to build your next Windows, Web or mobile app in record time?</p>
		<%--<img src="Images/NET-wrong-way.jpg" alt="ASP.NET logo" class="right"/>--%>
	</div>

	<div class="section">    
		<h2><a name="objectives"></a>Webinar Objectives</h2>
		<p>This webinar will explain:</p>
		<ul class="benefits">
			<li>Why you should use LightSwitch</li>
			<li>The benefits and the possible pitfalls</li>
			<li>What LightSwitch is about</li>
			<li>It’s place in the Microsoft development ecosystem</li>
            <li>How developers can take advantage of LightSwitch to combine corporate data to quickly develop applications</li>
		</ul>
        <p>We will also be looking at the LightSwitch HTML Client Preview and the latest version can be used to develop pure HTML LightSwitch apps.</p>
        <p>There will be lots of time and Q&A at the end.</p>
        <p>This webinar will be hosted by Mehmet Ozdemir (Solution Architect from SSW) and Andrew Coates (Developer Evangelist at Microsoft) on LightSwitch.</p> 
	</div>

	<%--<div class="section">
		<h2><a name="attend"></a>Who should attend?</h2>
		<p>Managers, decision makers and developers who want to know more about ASP.NET MVC and why they should use it on their next project.</p>
	</div>--%>

	<div class="section">
		<h2><a name="when"></a>Webinar Details</h2>
		<table class="beautyTable">
		  <tr class="odd">
			<td>Date:</td>
			<td>28th November 2013</td>
            
		  </tr>
		  <tr>
			<td>Time:</td>
			<td>11:00am - 12:00pm</td>
		  </tr>
		  <tr class="odd">
			<td>Cost:</td>
			<td>No Charge</td>
		  </tr>
		  <tr>
			<td>Presenters:</td>
			<td>Andrew Coates, Developer Evangelist at Microsoft and Mehmet Ozdemir, SSW Solution Architect</td>
		  </tr>
		</table>  
	 </div>
    <a name="Register"></a><h2>Register</h2>
    <a href="http://ssw.com.au/ssw/Events/Webinars/icalendar/2012-11-28-LightSwitch.ics"><img class="icon" src="iCalendar/calendar_icon.png" alt="iCalendar" /> Add to my calendar</a></br>    		
    
    <div style="width:100%; text-align:left;" ><iframe  src="http://www.eventbrite.com/tickets-external?eid=4804689957&ref=etckt&v=2" frameborder="0" height="214" width="100%" vspace="0" hspace="0" marginheight="5" marginwidth="5" scrolling="auto" allowtransparency="true"></iframe></div>
    <div class="download">
       
        <p>or call Marlon on <strong>+61 2 9953 3000</strong>.</p>
    </div>

</div>               	
</asp:Content>