<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="Dev Superpowers - Bootstrap and ASP.NET MVC" %>

<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ContentPlaceHolderID="Slider" runat="server">
    <img src="/ssw/events/webinars/images/DevSuperPowers-Bootstrap.jpg" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="/ssw/NETUG/SSWUpdate/Images/DevSuperpowers-Thumb.png" alt="Dev Superpowers - Bootstrap and ASP.NET MVC with Ben Cull" />
    <h1 style="font-size: 34px;">Dev Superpowers - Bootstrap and ASP.NET MVC with Ben Cull</h1>
    <h2>Beautiful and consistent web application design</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>Bootstrap and ASP.NET MVC:</h2>
    <ul>
        <li><a href="http://tv.ssw.com/devsuperpowers">Dev Superpowers</a></li>
        <li><a href="#Details">Video</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <div id="oversizeMaincontent">

        <div class="section">
            <p>Bootstrap is a sleek, intuitive, and powerful mobile first front-end framework for faster and easier web development. Join Ben as he shows you how easy it is to make use of the framework, and step beyond the "just another bootstrap site" look and feel.</p>
        </div>

        <div class="section">
            <h2><a name="Details"></a>Video</h2>
            <div class="eric-video">
                <div class="video-player" data-id="DbdvWHkSEZo" data-youkuid=""></div>
            </div>
            <%--<iframe width="560" height="315" src="//www.youtube.com/embed/DbdvWHkSEZo?rel=0" frameborder="0" allowfullscreen></iframe>--%>
        </div>

        <%--<div class="section">
		<h2><a name="Details"></a>Webinar Details</h2>
		<table class="beautyTable">
		  <tr class="odd">
			<td>Date:</td>
			<td>Thursday 28th of August</td>     
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
			<td>Ben Cull</td>
		  </tr>
		</table>  
	 </div>
        		
    <h2><a name="Register"></a>Register</h2>
<div style="width:100%; text-align:left;" ><iframe  src="//eventbrite.com.au/tickets-external?eid=12188527213&ref=etckt" frameborder="0" height="214" width="100%" vspace="0" hspace="0" marginheight="5" marginwidth="5" scrolling="auto" allowtransparency="true"></iframe><div style="font-family:Helvetica, Arial; font-size:10px; padding:5px 0 5px; margin:2px; width:100%; text-align:left;" ><a style="color:#000000; text-decoration:none;" target="_blank" href="http://www.eventbrite.com.au/r/etckt">Online Ticketing</a><span style="color:#000000;"> for </span><a style="color:#000000; text-decoration:none;" target="_blank" href="https://www.eventbrite.com.au/e/dev-superpowers-bootstrap-beautiful-and-consistent-web-application-design-tickets-12188527213?ref=etckt">Dev Superpowers - Bootstrap - Beautiful and consistent web application design</a> <span style="color:#000000;">powered by</span> <a style="color:#000000; text-decoration:none;" target="_blank" href="http://www.eventbrite.com.au?ref=etckt">Eventbrite</a></div></div>    --%>
    </div>

</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
    <div class="section">
        <h3>About the presenter</h3>
        <p>
            <img src="Images/ben-cull.jpg" class="thumbnail" />
            <strong>Ben Cull</strong><br />
            Ben Cull is a Software Architect for <a href="http://ssw.com.au" target="_blank">http://ssw.com.au</a>.
        </p>
        <p>
            When he's not coding a million start-up ideas like <a href="http://eventdebit.com" target="_blank">http://eventdebit.com</a>, or babbling on his blog over at 
            <a href="http://benjii.me" target="_blank">http://benjii.me</a>
        , you can find him brewing more beer than he can drink.
    </div>
</asp:Content>
