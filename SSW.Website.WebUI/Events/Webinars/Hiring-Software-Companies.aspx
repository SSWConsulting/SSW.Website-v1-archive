<%@ Page Language="C#" AutoEventWireup="false" Codebehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="How to make hiring and working with software developers less risky - Webinar" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>How to make hiring and working with software developers less risky - Webinar</h1>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
	<h2>Hiring Software Companies Webinar:</h2>
	<ul>
		<li><a href="#objectives">Webinar Objectives</a></li>
		<li><a href="#when">Webinar Details</a></li>
		<li><a href="#Register">Register</a></li>
	</ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
<div id="oversizeMaincontent">

	<div class="section"> 
        <img src="Images/Risk.jpg" width="250" alt="Risk" class="right"/>
		<p>Software development is risky. SSW has worked with hundreds of clients over the last 20 years. In this webinar Marlon Marescia will give you real world examples of projects that went well and projects that didn’t.</p>
        <p>There will be lots of time for Q&A at the end</p>
	</div>
	
	<div class="section">    
		<h2><a name="objectives"></a>Webinar Objectives</h2>
		<p>You will learn:</p>
		<ul class="benefits">
			<li>The key questions to ask prospective software consultants</li>
            <li>The best project management methodology for delivering cost effective software</li>
            <li>How to manage software consultants</li>
            <li>The #1 way to ensure your software project is successful</li>
            <li>The pros and cons of fixed price and time and materials contracts</li>
            <li>A warts and all case study of one of our clients. What was done right and what was done wrong by SSW and the client?</li>
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
			<td>Thursday 25rd October</td>     
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
        <a class="green next" href="https://www1.gotomeeting.com/register/388766824">Register</a><br />
        <p>or call Marlon on <strong>+61 2 9953 3000</strong>.</p>
    </div>

</div>               	
</asp:Content>