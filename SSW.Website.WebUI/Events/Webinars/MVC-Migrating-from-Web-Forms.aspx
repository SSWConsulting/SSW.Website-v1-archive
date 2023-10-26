<%@ Page Language="C#" AutoEventWireup="false" Codebehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="SSW ASP.NET MVC Webinar (Part 3) - Migrating to MVC without losing your Web Forms investment" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="Images/thumbs/webinar-thumb.jpg" alt="ASP.NET MVC" />
	<h1>SSW ASP.NET MVC Webinar (Part 3)</h1>
	<h2>Migrating to MVC without losing your Web Forms investment</h2>
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
        <p>MVC is a giant leap forward for ASP.NET developers and represents the best way to build new web applications.  Unfortunately, not every project is a green fields project, and most organisations have at least a few applications running on Web Forms that need to be maintained.</p>
        <p>Starting a brand new project in MVC is easy, but moving to MVC from an existing Web Forms application isn’t a trivial decision.  It would be madness to ignore the years of investment you’ve already made in your Web Forms application.  Even if you’re happy to throw all that old code away and start anew, is your manager similarly enthusiastic?</p>
        <p>Nobody wants to be stuck on old technology, but you also don’t want to feel like you’ve wasted the last few years!</p>
        <p>Are you looking to build websites that can run on desktop and mobile devices with little extra effort?</p>
        <p>In this webinar, I’ll show you how you can move forward with ASP.NET MVC without losing the investment you’ve already made with Web Forms.  You’ll be able to start working with the “new shiny” without incurring the wrath of your users and managers by rebuilding everything from scratch.</p>
	</div>
	<div class="scrum-greybox">
        <p>Want a serious all day course instead?<br />
        Attend the "Enterprise MVC Apps" course (on premise or custom):</p>
        <ul>
            <li><a href="http://www.ssw.com.au/ssw/events/Training/enterprise-MVC-part-1.aspx">Part I</a></li>
            <li><a href="http://www.ssw.com.au/ssw/events/Training/enterprise-MVC-part-2.aspx">Part II</a></li>
        </ul>
    </div>

	<div class="section">    
		<h2><a name="objectives"></a>Webinar Objectives</h2>
		<ul class="benefits">
			<li>Why you should move to MVC and how to sell it to your manager</li>
			<li>Options for moving from Web Forms to MVC</li>
			<li>A migration strategy that’ll make everyone happy</li>
			<li>Ample time for Q&A</li>
		</ul>
	</div>

	<div class="section">
		<h2><a name="attend"></a>Who should attend?</h2>
		<p>Developers and team leaders who are keen to move to ASP.NET MVC but can’t get organisational buy-in.</p>
	</div>

	<div class="section">
		<h2><a name="when"></a>Webinar Details</h2>
		<table class="beautyTable">
		  <tr class="odd">
			<td>Date:</td>
			<td>Thursday 20th December</td>     
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
			<td>Damian Brady, SSW Solution Architect</td>
		  </tr>
		</table>  
	 </div>
        		
    <a name="Register"></a>
    <div class="download">
        <a class="green next" href="https://login.citrixonline.com/login?service=https%3A%2F%2Fglobal.gotomeeting.com%2Fmeeting%2Fj_spring_cas_security_check">Register</a><br />
        <p>or call Marlon on <strong>+61 2 9953 3000</strong>.</p>
    </div>

</div>               	
</asp:Content>