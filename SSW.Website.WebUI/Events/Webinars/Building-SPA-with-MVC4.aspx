<%@ Page Language="C#" AutoEventWireup="false" Codebehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="Building Single Page Applications with ASP.NET MVC 4" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="Images/thumbs/webinar-thumb.jpg" alt="ASP.NET MVC" />
	<h1>Building Single Page Applications with ASP.NET MVC 4</h1>
	
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
	<h2>Building Single Page Applications with ASP.NET MVC 4 Webinar:</h2>
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
		<p>Single Page Applications (or SPA) have traditionally been used to make mobile web apps and perform like native apps.  However, SPA techniques can be applied to your desktop web apps too.
        However, SPA techniques can be applied to your desktop web apps too. With the new SPA templates available for MVC 4 projects, it’s easy to create extremely responsive applications for any type of browser.</p>
        <p>In this webinar, <a href="http://adamstephensen.wordpress.com/">Adam Stephensen</a> and <a href="http://blog.damianbrady.com.au/">Damian Brady</a> talk about the new SPA templates for MVC 4, and what benefits they can give your applications. Come and learn how implementing these techniques can give your web application some awesome UI and performance boosts.</p>
	</div>
	<div class="scrum-greybox">
        <p>Want a serious all day course instead?<br />
        Check out what we have to offer with the *NEW AND IMPROVED* Enterprise MVC Training Courses:</p>
        <ul>
            <li><a href="http://www.ssw.com.au/ssw/events/Training/enterprise-MVC-Day-1.aspx">Enterprise MVC Apps Day I - MVC Foundations: From the Ground Up</a></li>
            <li><a href="http://www.ssw.com.au/ssw/events/Training/enterprise-MVC-Day-2.aspx">Enterprise MVC Apps Day II - MVC Essentials: From Dependency Injection to Smoking Unit Tests</a></li>
            <li><a href="http://www.ssw.com.au/ssw/events/Training/enterprise-MVC-Day-3.aspx">Enterprise MVC Apps Day III - MVC Advanced: Going Beyond the Demos</a></li>
            <li><a href="http://www.ssw.com.au/ssw/events/Training/enterprise-MVC-Day-4.aspx">Enterprise MVC Apps Day IV - MVC Hard-Core: Enterprise Data Access</a></li>
        </ul>
    </div>

	<div class="section">    
		<h2><a name="objectives"></a>Webinar Objectives</h2>
		<p>This webinar will explain:</p>
		<ul class="benefits">
			<li>What is a Single Page Application</li>
            <li>The benefits of SPA over a traditional web application</li>
            <li>When you would use a SPA</li>
            <li>SPA techniques that are useful in any app</li>
		</ul>
	</div>

	<div class="section">
		<h2><a name="attend"></a>Who should attend?</h2>
		<p>Managers, decision makers and developers who want to know more about ASP.NET MVC and why they should use it on their next project.</p>
	</div>

	<div class="section">
		<h2><a name="when"></a>Webinar Details</h2>
		<table class="beautyTable">
		  <tr class="odd">
			<td>Date:</td>
			<td>Monday 20th May 2013</td>     
		  </tr>
		  <tr>
			<td>Time:</td>
			<td>11:00am - 12:00pm</td>
		  </tr>
		  <tr class="odd">
			<td>Cost:</td>
			<td><b>FREE</b></td>
		  </tr>
		  <tr>
			<td>Presenter:</td>
			<td><a href="http://adamstephensen.wordpress.com/">Adam Stephensen</a> - SSW Solution Architect
              <br />
            <a href="http://blog.damianbrady.com.au/">Damian Brady</a> - SSW Solution Architect and General Manager (QLD)</td>
		  </tr>
		</table>  
	 </div>
        <a name="Register"></a>	
    <a href="http://www.eventbrite.com.au/event/6582232635?ref=ebtn" target="_blank"><img src="http://www.eventbrite.com.au/custombutton?eid=6582232635" alt="Eventbrite - Building Single Page Applications with ASP.NET MVC 4" /></a>
</div>               	
</asp:Content>