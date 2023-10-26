<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master" Title="Business Intelligence 101 for Business" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <h1>Business Intelligence 101</h1>
    <h2>What decision makers need to know about Business Intelligence</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">    
	<h2>Business Intelligence 101 for Business:</h2>
    <ul>
        <li><a href="#objectives">Workshop Objectives</a></li>
        <li><a href="#outline">Workshop Outline</a></li>
        <li><a href="#attend">Who Should attend?</a></li>
        <li><a href="#when">Workshop Details</a></li>
    
    </ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
<div id="oversizeMaincontent">

	<div class="section"> 
<%--        <div class="joeVid">
		<a class="imgRight joe" href="javascript:showSswVideo('../video/JoeSharePoint101_v3.wmv');"></a>
		<p><strong>Video:</strong> hear Joe Hardy introduce SharePoint 101.</p>
		</div>
	           
	    <dl class="imgRight" style="width:200px;">
	        <dt> <img src="Images/SharePoint2010Logo_Small.jpg" alt=""/> </dt>
	        <dd></dd>
	    </dl>--%>
        
        
       <p>With the economy in such an uncertain state, it is more important than ever that businesses optimise all inventory, spending, staffing, resources and critical decisions.</p>
       <p>Businesses can use Business Intelligence (BI) to improve decision making, cut costs and identify new business opportunities. It is more than just corporate reporting and 
       more than a set of tools to retrieve information from enterprise systems. Efficient businesses use BI to identify inefficient business processes that are candidates for 
       re-engineering.</p>
       <p>Today's Business Intelligence tools allow end users to start analyzing data themselves, instead of waiting for the IT department to run complex reports. This easily accessed data puts the power back in the hands of businesses users to make informed decisions.</p>
    </div>
    
    <div class="section">
        
    <h2><a name="objectives"></a>Workshop Objectives</h2>
    <p>This workshop will provide the attendee with:</p>
    <ul class="benefits">
        <li>An understanding of the features of a good Business Intelligence solution</li>
        <li>An in depth understanding of how key features of Business Intelligence can enhance business processes</li>
        <li>An understanding of the costs, timelines, staff involvement and commitment a business will incur when implementing a Business Intelligence solution </li>
    </ul>
    <p>This workshop is presented in layman terms that staff in all departments will understand.</p>
    </div>
    <div class="section">
    <h2><a name="outline"></a>Workshop Outline</h2>
    <ol>
        <li>The benefits Business Intelligence brings to a business? </li>
        <li>An overview of different types of Business Intelligence tools and solutions</li>
        <li>An explanation of how common business challenges are solved using Business Intelligence tools </li>
        <li>What it takes to implement a Business Intelligence solution in a typical business in regards to implementation, costs and timelines </li>
        <li>An introduction to the Microsoft Business Intelligence toolset</li>
    </ol>
    <p>Case studies are used throughout for real world examples.</p>
    </div>
    <div class="section">
        <h2><a name="attend"></a>Who should attend?</h2>
        <p>Business managers who want to know more about Business Intelligence from a business perspective, not a technical perspective.</p>
    </div>
    <div class="section">
        <h2><a name="when"></a>Workshop Details</h2>
        <table class="beautyTable">
          <tr class="odd">
            <td>Date:</td>
            <td>Wednesday 17th March 2010</td>            
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
<%--     <a name="Register"></a>
        <div class="download narrowDownload">
            <a style="border: medium none ;" href="/ssw/Shop/BasketInsert.aspx?ProductID=BI1703">
                <img src="/ssw/Images/Button_Register.gif" alt="Register online now"/></a>
            <br />
            or
            <br />
            <br />
            Call (02) 9953 3000
        </div> --%>
             
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