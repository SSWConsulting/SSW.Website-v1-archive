<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="Dev Superpowers – Native iOS and Android Development" %>

<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ContentPlaceHolderID="Slider" runat="server">
    <img src="/ssw/events/webinars/images/DevSuperPowers-Xamarin.png" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="/ssw/NETUG/SSWUpdate/Images/DevSuperpowers-Thumb.png" alt="Dev Superpowers – Native iOS and Android Development with Adam Stephensen" />
    <h1 style="font-size: 34px;">Dev Superpowers – Native iOS and Android Development with Adam Stephensen</h1>
    <h2>Getting started building cross platform native mobile applications with Xamarin and Visual Studio</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>Native iOS and Android Development:</h2>
    <ul>
        <li><a href="http://tv.ssw.com/devsuperpowers">Dev Superpowers</a></li>
        <li><a href="#Details">Video</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <div id="oversizeMaincontent">

        <div class="section">
            <p>Xamarin has been the best way to build cross platform applications for years. It just got better with the release of Xamarin Forms. With Xamarin forms you can now develop your UI as well as your business logic in Visual Studio and get >95% code re-use across platforms.</p>
            <p>In this session we will watch as Adam Stephensen uses Xamarin to build an application that runs natively on both Android and iOS.</p>
            <h2><a name="Details"></a>Video</h2>
            <div class="eric-video">
                <div class="video-player" data-id="cOrj52_VXXI" data-youkuid=""></div>
            </div>
            <%--<iframe width="650" height="366" src="//www.youtube.com/embed/cOrj52_VXXI?rel=0" frameborder="0" allowfullscreen></iframe>--%>
            <%--        <p>We will cover:</p>
        <ul>
            <li>Options for Cross-platform Development</li>
            <li>Cross-platform Architecture</li>
            <li>iOS and Android Fundamentals</li>
            <li>Using Native UI and Controls</li>
        </ul>
	</div>--%>

            <%--<div class="section">
		<h2><a name="Details"></a>Webinar Details</h2>
		<table class="beautyTable">
		  <tr class="odd">
			<td>Date:</td>
			<td>Thursday 30th of October</td>     
		  </tr>
		  <tr>
			<td>Time:</td>
			<td>11:00am - 12:00pm AEDT</td>
		  </tr>
		  <tr class="odd">
			<td>Cost:</td>
			<td>No Charge</td>
		  </tr>
		  <tr>
			<td>Presenter:</td>
			<td>Adam Stephensen</td>
		  </tr>
		</table>  
	 </div>
        		
    <h2><a name="Register"></a>Register</h2>
<div style="width:100%; text-align:left;" ><iframe  src="https://www.eventbrite.com.au/tickets-external?eid=11785864839&ref=etckt" frameborder="0" height="214" width="100%" vspace="0" hspace="0" marginheight="5" marginwidth="5" scrolling="auto" allowtransparency="true"></iframe><div style="font-family:Helvetica, Arial; font-size:10px; padding:5px 0 5px; margin:2px; width:100%; text-align:left;" ><a style="color:black; text-decoration:none;" target="_blank" href="http://www.eventbrite.com.au/r/etckt">Sell Tickets Online</a> <span style="color:black;">through</span> <a style="color:black; text-decoration:none;" target="_blank" href="http://www.eventbrite.com.au?ref=etckt">Eventbrite</a></div></div>--%>
        </div>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
    <div class="section">
        <h3>About the presenter</h3>
        <p>
            <img src="/ssw/events/Training/images/training_adams.jpg" width="75" class="thumbnail">

            <strong>Adam Stephensen</strong><br />
            Adam is a Software Architect at SSW, and head mentor at <a href="http://FireBootCamp.com">http://FireBootCamp.com</a>, the gruelling 9 week boot camp for .NET developers. 
                He loves delivering high quality, scalable, enterprise solutions. He has a passion for Scrum, Continuous Delivery, and software craftsmanship. 
                This has led him to mentor and contribute to many .NET projects across a broad range of technologies.
        </p>
        <p>
            Adam is currently excited by the multitude of new tools and platforms coming from Microsoft, especially the combination of Visual Studio Online and Windows Azure.
            
        </p>
    </div>
</asp:Content>
