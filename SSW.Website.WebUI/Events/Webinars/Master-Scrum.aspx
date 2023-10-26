<%@ Page Language="C#" AutoEventWireup="false" Codebehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="SSW Mastering Scrum Webinar" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="Images/thumbs/webinar-thumb.jpg" alt="Webinar" />
	<h1>SSW Mastering Scrum Webinar</h1>
	<h2>The common pitfalls and how to overcome them</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
	<h2>Mastering Scrum Webinar:</h2>
	<ul>
		<li><a href="#objectives">Webinar Objectives</a></li>
		<li><a href="#attend">Who Should attend?</a></li>
		<li><a href="#when">Webinar Details</a></li>
		<li><a href="#Register">Register</a></li>
	</ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
<div id="oversizeMaincontent">

	<div class="section"> 
		<p>Scrum is easy to learn but hard to master. The Scrum Guide teaches you the rules of engagement to start using Scrum, but doesn’t give you the strategy to overcome the challenges that may arise.</p>
		<%--<img src="Images/NET-wrong-way.jpg" alt="ASP.NET logo" class="right"/>--%>
        <p>In this webinar Gerard and Marlon will visit some common pitfalls and look at practical solutions to overcome each.</p>
		<p>SSW has been using and training other development teams in agile processes for over 10 years.</p>
	</div>

    <div class="section">    
		<h2><a name="objectives"></a>Webinar Objectives</h2>
		<p>In this webinar they will  discuss :</p>
		<ul class="benefits">
			<li>The Daily scrum</li>
			<li>Sprint Planning</li>
			<li>The Sprint Retrospective</li>
			<li>The Sprint Review</li>
            <li>Product owners, scrum masters and development teams</li>
		</ul>
	</div>

	<div class="section">
		<h2><a name="attend"></a>Who should attend?</h2>
		<p>Managers, decision makers and developers who want to successfully use Scrum methodology on their next project.</p>
	</div>

	<div class="section">
		<h2><a name="when"></a>Webinar Details</h2>
		<table class="beautyTable">
		  <tr class="odd">
			<td>Date:</td>
			<td>29th November 2012</td>     
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
			<td>Marlon Marescia and Gerard Beckerleg</td>
		  </tr>
		</table>  
	 </div>
        		
    <a name="Register"></a><h2>Register</h2>
    <a href="http://ssw.com.au/ssw/Events/Webinars/icalendar/2012-11-29-MasteringScrum.ics"><img class="icon" src="iCalendar/calendar_icon.png" alt="iCalendar" /> Add to my calendar</a></br>
        		
    <div style="width:100%; text-align:left;" ><iframe  src="http://www.eventbrite.com/tickets-external?eid=3678251750&ref=etckt&v=2" frameborder="0" height="214" width="100%" vspace="0" hspace="0" marginheight="5" marginwidth="5" scrolling="auto" allowtransparency="true"></iframe></div>
    <div class="download">
        <p>or call Marlon on <strong>+61 2 9953 3000</strong>.</p>
    </div>

</div>               	
</asp:Content>