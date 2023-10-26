<%@ Page Language="C#" AutoEventWireup="false" Codebehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="SSW ASP.NET MVC Webinar (Part 2) - Why you should never use Web Forms again" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="Images/thumbs/webinar-thumb.jpg" alt="ASP.NET MVC" />
	<h1>SSW ASP.NET MVC Webinar (Part 2)</h1>
	<h2>Why you should never use Web Forms again!</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
	<h2>ASP.NET MVC Webinar:</h2>
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
        <img src="Images/NET-wrong-way.jpg" alt="MVC" class="right"/>
		<p>Do you want to enjoy the art of coding again?</p>
        <p>Are you sick of fighting with the Web Forms page lifecycle?</p>
        <p>Do you want to spend more time building better functionality instead of finding elusive bugs?</p>
        <p>Are you looking to build websites that can run on desktop and mobile devices with little extra effort?</p>
        <p>Like most, I was a Web Forms developer. These things used to get me down, until I started using ASP .NET MVC.</p>
        <p>In this webinar I’ll show you why I will never go back to Web Forms again, and how MVC has brought the joy and creativity back into programming for me.</p>
	</div>
	<div class="scrum-greybox">
        <p>Want a serious all day course instead?<br />
        Attend the "Enterprise MVC Apps" course (on premise or custom):</p>
        <ul>
            <li><a href="http://www.ssw.com.au/ssw/events/Training/enterprise-MVC-Day-1.aspx">Day I</a></li>
            <li><a href="http://www.ssw.com.au/ssw/events/Training/enterprise-MVC-Day-2.aspx">Day II</a></li>
            <li><a href="http://www.ssw.com.au/ssw/events/Training/enterprise-MVC-Day-3.aspx">Day III</a></li>
            <li><a href="http://www.ssw.com.au/ssw/events/Training/enterprise-MVC-Day-4.aspx">Day IV</a></li>
        </ul>
    </div>

	<div class="section">    
		<h2><a name="objectives"></a>Webinar Objectives</h2>
		<p>This webinar will provide the attendee with:</p>
		<ul class="benefits">
			<li>The challenges created by Web Forms</li>
			<li>How ASP .NET MVC 4 overcomes those challenges</li>
			<li>My top features that make me a super productive developer</li>
			<li>Ample time for Q&A</li>
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
			<td>Tuesday 2nd October</td>     
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
			<td>Presenter:</td>
			<td>Adam Stephensen, SSW Solution Architect</td>
		  </tr>
		</table>  
	 </div>
        		
    <a name="Register"></a>
    <div class="download">
        <a class="green next" href="https://www1.gotomeeting.com/register/660270712">Register</a><br />
        <p>or call Marlon on <strong>+61 2 9953 3000</strong>.</p>
    </div>

</div>               	
</asp:Content>