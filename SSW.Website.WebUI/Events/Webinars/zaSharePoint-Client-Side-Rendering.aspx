<%@ Page Language="C#" AutoEventWireup="false" Codebehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="SharePoint 2013: So what is Client Side Rendering?" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="Images/thumbs/webinar-thumb.jpg" alt="SharePoint 2013 101" />
    <h1>SharePoint 2013: So what is Client Side Rendering?</h1>
    <h2>How to better utilize all the new techniques SharePoint 2013 has to offer</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">   
	<h2>SharePoint 2013: So what is Client Side Rendering?</h2>
    <ul>
        <li><a href="#objectives">Webinar Objectives</a></li>
        <li><a href="#attend">Who Should attend?</a></li>
        <li><a href="#when">Webinar Details</a></li>
        <%--<li><a href="#Register">Register</a></li>--%>
    </ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
<div id="oversizeMaincontent">

	<div class="section"> 
	    <p>It’s hardly possible to talk about SharePoint development anymore without a good dose of client side technologies getting tossed into the mix. 
           Server side isn’t the only object model to consider; since SharePoint 2010 we have had a rich JavaScript object model (JSOM) to work with. 
           Now SharePoint 2013 has brought even more JavaScript to the party via a technique called Client Side Rendering.</p>
        <img src="Images/SharePoint-2013-logo-small.jpg" alt="" class="right"/>
        <p><a href="http://nickhadlee.wordpress.com/">Nick Hadlee</a> will introduce the Client Side Rendering (CSR) capabilities of SharePoint 2013 and show how they are changing the way that customisations need to be planned and opening up more possibilities for building rich solutions that make use of SharePoint’s UI.</p>
        <p>SSW's very own Chief Architect <a href="http://www.adamcogan.com/">Adam Cogan</a> will be joining Nick Hadlee in this discussion, so don't miss out!</p>
    </div>
    
    <div class="section">   
        <h2><a name="objectives"></a>Webinar Objectives</h2>
        <p>This webinar will provide the attendee with:</p>
        <ul class="benefits">
            <li>An introduction to what Client Side Rendering is in SharePoint 2013</li>
            <li>How to use Client Side Rendering to customize the rendering of fields and list views within SharePoint 2013</li>
            <li>How to use Client Side Rendering to build richer SharePoint UI's</li>
        </ul>
    </div>

    <div class="section">
        <h2><a name="attend"></a>Who should attend?</h2>
        <p>Managers, decision makers, end users who want to know more about SharePoint from a business perspective to make a decision whether or not to implement SharePoint 2013 in their business.</p>
        <p><b>THIS WEBINAR IS NOW CLOSED: You can, however, continue the conversation on the <a href="http://www.meetup.com/Sydney-NET-User-Group/events/118300812/">Sydney .NET User Group Meetup Page</a>.</b></p>   
         </div>

   <div class="section">
		<h2><a name="when"></a>Webinar Details</h2>
		<table class="beautyTable">
		  <tr class="odd">
			<td>Date:</td>
			<td>Wednesday 29th May 2013</td>     
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
			<td>Presenters:</td>
			<td><a href="http://nickhadlee.wordpress.com/">Nick Hadlee</a> - Senior SharePoint Consultant at <a href="http://www.intergen.co.nz">Intergen</a>
              <br />
            <a href="http://www.adamcogan.com/">Adam Cogan</a> - SSW Chief Architect and Microsoft Regional Director</td>
		  </tr>
		</table>  
	 </div>
        <%--<a name="Register"></a>
        <a href="http://www.eventbrite.com.au/event/6583067131?ref=ebtn" target="_blank"><img src="http://www.eventbrite.com.au/custombutton?eid=6583067131" alt="Eventbrite - SharePoint 2013: So what is Client Side Rendering?" /></a>--%>
             
</div>
 
</asp:Content>