<%@ Page Language="C#" AutoEventWireup="false" Codebehind="ContentManagement.aspx.cs"
    MasterPageFile="~/Masters/SubPage.master" Title="Process Improvement 101 for Software Teams" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>Process Improvement 101 for Software Teams</h1>
    <h2>What all software teams should know about Process Improvement</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="featureimage" runat="server">
    <img src="/ssw/Training/Images/header_piWorkshop.jpg" height="200" width="799" alt="SSW Process Improvement 101 for Software Teams" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">    
	<h2>Process Improvement 101 for Software Teams:</h2>
    <ul>
        <li><a href="#objectives">Workshop Objectives</a></li>
        <li><a href="#outline">Workshop Outline</a></li>
        <li><a href="#attend">Who Should attend?</a></li>
        <li><a href="#when">Workshop Details</a></li>
        <li><a href="#Register">Register</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
<div id="oversizeMaincontent">
    <p>        
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" SiteMapProvider="SSWXmlSiteMapProvider" CurrentNodeStyle-CssClass="current" PathSeparator=" &raquo; " PathSeparatorStyle-CssClass="separator" CssClass="breadcrumblight"></asp:SiteMapPath>
    </p>

	<div class="section"> 
<%--        <div class="joeVid">
		<a class="imgRight joe" href="javascript:showSswVideo('../video/JoeSharePoint101_v3.wmv');"></a>
		<p><strong>Video:</strong> hear Joe Hardy introduce SharePoint 101.</p>
		</div>
	           
	    <dl class="imgRight" style="width:200px;">
	        <dt> <img src="Images/SharePoint2010Logo_Small.jpg" alt=""/> </dt>
	        <dd></dd>
	    </dl>--%>
        
        
       <p>We all know, deep down, that our processes, workflows and tools within our software or IT organization are not optimal and that with some careful consideration, 
       efficiency could be greatly improved.</p>
       <p>By having a process for improving process and measuring the cost and associated benefits, everyone can see what is worth doing and know when to stop as process 
       improvement can become non-cost effective if taken too far.</p>
       <p>Become aware of the opportunities and harness a process to decide what to do.</p>
    </div>
    
    <div class="section">
        
    <h1><a name="objectives"></a>Workshop Objectives</h1>
    <p>This workshop will provide the attendee with:</p>
    <ul class="benefits">
        <li>Understand the benefits possible when software processes are improved</li>
        <li>Learn the 7 signs of wastage and inefficiency and how to remedy each one</li>
        <li>Learn a systematic measurable process for improving process</li>
        <li>Understand the costs, timelines, staff involvement and commitment a business will incur when improving processes</li>
        <li>Understand some of the best tools on the market that could realise the benefits to your organisation</li>
    </ul>
    <p>This workshop is presented in layman terms staff in all departments understands.</p>
    </div>
    <div class="section">
    <h1><a name="outline"></a>Workshop Outline</h1>
    <ol>
        <li>Why your business needs to consider improving your software processes? </li>
        <li>The 7 signs of wastage</li>
        <li>The process for improving process</li>
        <li>Group Exercise</li>
        <li>Demonstration of SSW's workflow for the development team using Team Foundation Server</li>
        <li>Case studies</li>
        <li>Some leading industry tools</li>
    </ol>
    <p>Case studies are used throughout for real world examples.</p>
    </div>
    <div class="section">
        <h1><a name="attend"></a>Who should attend?</h1>
        <p>Team leaders of software teams, CIO's, development managers and senior developers seeking ways to improve.</p>
    </div>
    <div class="section">
        <h1><a name="when"></a>Workshop Details</h1>
        <table class="beautyTable">
          <tr class="odd">
            <td>Date:</td>
            <td>Friday 26th March 2010</td>            
          </tr>
          <tr>
            <td>Time:</td>
            <td>8:00am - 11:00am</td>
          </tr>
          <tr class="odd">
            <td style="vertical-align:top;">Address:</td>
            <td><a href="/ssw/Company/Directions/NeutralBay/">Suite 10, 81-91 Military Road Neutral bay 2089 NSW</a>
</td>
          </tr>
          <tr>
            <td>Food:</td>
            <td>Breakfast is provided</td>
          </tr>
          <tr class="odd">
            <td>Cost:</td>
            <td>No Charge</td>
          </tr>
        </table>          
     <a name="Register"></a>
        <div class="download narrowDownload">
            <a style="border: medium none ;" href="/ssw/Shop/BasketInsert.aspx?ProductID=PI1003">
                <img src="/ssw/Images/Button_Register.gif" alt="Register online now"/></a>
            <br />
            or
            <br />
            <br />
            Call (02) 9953 3000
        </div>
             
    </div>
    <div align="right">
                <a href="/ssw/Events/SSWTechBreakfast.aspx">Require technical training?</a>
    </div>
 </div> 
    <script src="/ssw/Include/SswVideoPlayer.js" type="text/javascript"></script>
    <script type='text/javascript' src="/ssw/Include/Silverlight/MicrosoftAjax.js"></script>
    <script type='text/javascript' src="/ssw/Include/Silverlight/Silverlight.js"></script>
    <script type='text/javascript' src="/ssw/Include/Silverlight/SilverlightControl.js"></script>
    <script type='text/javascript' src="/ssw/Include/Silverlight/SilverlightMedia.js"></script>
    <script type='text/javascript' src="/ssw/Include/Silverlight/ExpressionPlayer.js"></script>
    <script type='text/javascript' src="/ssw/Include/Silverlight/PlayerStrings.js"></script>
    <script type='text/javascript' src="/ssw/Include/Silverlight/player.js"></script>
    <script type='text/javascript' src="/ssw/Video/StartJoeSharePoint101.js"></script>
</asp:Content>