﻿<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubPage.master" Title="Videos - Reusable Extras | SSW Consulting - Sydney, Brisbane, Melbourne, Newcastle, France, China" %>

<%@ Register TagPrefix="text" TagName="Location" Src="/ssw/components/location.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="../images/thumbs/thumb-video-production.jpg" alt="Video Production" />
    <h1>Video Production - Reusable Extras</h1>
    <h2>Add consistent branding to your videos</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2><a name="AboutUs"></a>Videos - Reusable Extras:</h2>
    <ul>
        <li><a href="#Overview">Overview</a></li>
        <li><a href="#getstarted">How to Get Started</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">

    <div class="section">
        <h2><a name="Overview"></a>Overview</h2>
        <h3>Logo Stings: $400 + GST</h3>
        <p>Animated sting, based on a template, to grab the user’s attention and add branding to the video. This will go at the beginning of all of your videos, but only needs to be created once.</p>
        <h3>SSW TV logo sting</h3>
        <div id="id1">
            <div class="video-player" data-id="TSHFQW624ww" data-youkuid=""></div>
            <%--<iframe width="500" height="281" src="https://www.youtube.com/embed/TSHFQW624ww?rel=0" frameborder="0" allowfullscreen></iframe>--%>
        </div>
        <div id="id2" style="display: none"><iframe src="https://player.vimeo.com/video/121209309" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>
        <a href="#id"onclick="toggle_visibility(this,'id1', 'id2');" class="red btn next">Watch in higher quality on Vimeo</a>

        <h3>Call to Action: $600 + GST</h3>
        <p>This will go on the end of all of your videos, and will direct viewers to take action, call you, subscribe, or anything else you decide.</p> 
        <h3>Quiz CTA:</h3>
        <div id="id3">
            <div class="video-player" data-id="OQVY46f-BEM" data-youkuid=""></div>
            <%--<iframe width="500" height="281" src="https://www.youtube.com/embed/OQVY46f-BEM?rel=0" frameborder="0" allowfullscreen></iframe>--%>
        </div>
        <div id="id4" style="display: none">
            <iframe src="https://player.vimeo.com/video/121208994" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
        </div>
        <a href="#id"onclick="toggle_visibility(this,'id3', 'id4');" class="red btn next">Watch in higher quality on Vimeo</a> 
        
    </div>

    <div class="ContactUs">
	    <h2><a name="getstarted"></a>Get your project started</h2>
        <p>To find out if SSW can help your business, give us a call on <strong>+61 2 9953 3000</strong> or contact us by <a href="javascript:sendEmail('696e666f407373772e636f6d2e6175')" onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e6175'); return true;"
                    onmouseout="javascript:clearStatus(); return true;">email</a> to get started! </p>
    </div>

    <text:Location runat="server" />

    <div class="section">
        <h2><a name="Related"></a>SSW Related Services</h2>
            <h3 class="accordionHeader"><a href="Video-Production-Product-Services.aspx">Product/Service Video</a></h3>
          
            <h3 class="accordionHeader"><a href="Video-Production-Training.aspx">Training Video</a></h3>
           
            <h3 class="accordionHeader"><a href="Video-Production-Content-Marketing.aspx">Content Marketing Video (Educational)</a></h3>
           
            <h3 class="accordionHeader"><a href="Conference-Video-Recording.aspx">Live Events</a></h3>
        
            <h3 class="accordionHeader"><a href="Video-Production-Custom-Video.aspx">Custom Video</a></h3>
    </div>

</asp:Content>