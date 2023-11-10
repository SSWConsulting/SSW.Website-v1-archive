<%@ Page Language="C#" AutoEventWireup="false" Codebehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="How to create professional videos to promote your business online - Webinar" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>How to create professional videos to promote your business online - Webinar</h1>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
	<h2>Promotional Videos Webinar:</h2>
	<ul>
		<li><a href="#objectives">Webinar Objectives</a></li>
		<li><a href="#when">Webinar Details</a></li>
		<li><a href="#Register">Register</a></li>
	</ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
<div id="oversizeMaincontent">

	<div class="section"> 
        <img src="Images/YouTube_logo.jpg" width="250" alt="YouTube" class="right"/>
		<p>At SSW we have a video team who puts together the SSW TV interviews and creates videos to promote our business online</p>
        <p>In this webinar Raj and Titus part of the SSW TV team will be explaining how they create and use videos to promote our business online. As the masterminds behind SSW TV they will give you insights into the best ways to create exceptional videos.</p>
        <p>There will be lots of time for Q&A at the end</p>
	</div>
	<div class="scrum-greybox">
        <p>Watch some of our own videos by SSWTV: </p>
        <ul>
            <li><a href="http://youtu.be/li3Fkv4voL0">Why Choose SSW?</a></li>
            <li><a href="http://youtu.be/2G7z2mF7Onk">What is SSW TV?</a></li>
            <li><a href="http://youtu.be/pTpJNU-czHY">National Australia Day Case StudyPart II</a></li>
        </ul>
    </div>

	<div class="section">    
		<h2><a name="objectives"></a>Webinar Objectives</h2>
		<p>This webinar will provide the attendee with:</p>
		<ul class="benefits">
			<li>How to make professional looking videos on a budget</li>
            <li>Explanation of the equipment required to get up and running fast</li>
            <li>How to use online videos to establish your business as a trusted advisor to increase sales</li>
            <li>A comparison of the best video hosting services ?Why you should use YouTube</li>
            <li>What types of videos are effective to secure sales vs just branding</li>
            <li>How to create a community around your videos</li>
            <li>How to convert a viewer of your video into a sale</li>
            <li>Case study on how SSW uses SSW TV to create new business opportunities</li>
		</ul>
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
			<td>Tuesday 23rd October</td>     
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
			<td>Marlon Marescia, SSW Sales Manager</td>
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