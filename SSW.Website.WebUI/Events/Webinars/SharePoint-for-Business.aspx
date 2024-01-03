<%@ Page Language="C#" AutoEventWireup="false" Codebehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="SharePoint 101 for Business Webinar" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="Images/thumbs/webinar-thumb.jpg" alt="SharePoint 2016 101" />
    <h1>SharePoint 101 for Business Webinar</h1>
    <h2>What every business person should know about SharePoint 2016</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">   
	<h2>SharePoint 101 for Business:</h2>
    <ul>
        <li><a href="#objectives">Webinar Objectives</a></li>
        <li><a href="#outline">Webinar Outline</a></li>
        <li><a href="#attend">Who Should attend?</a></li>
        <li><a href="#when">Webinar Details</a></li>
        <li><a href="#Register">Register</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
<div id="oversizeMaincontent">

	<div class="section"> 
	    <p>SharePoint 2016 is a very powerful collaboration tool and one of Microsoft's most popular business products. Many business people have heard about SharePoint but struggle to understand exactly how SharePoint can improve their business processes. Decision makers who are interested in using SharePoint, can find it hard to find the right information to help them make informed decisions.</p>
        <img src="Images/SharePoint-2013-logo-small.jpg" alt="" class="right"/>
        <p>A search on Google will provide a lot of technical information on SharePoint 2016, but this information can be difficult for a non IT person to understand. This webinar presents the features and business case to use SharePoint in terms that all business people can understand.</p>
    </div>
    
    <div class="section">   
        <h2><a name="objectives"></a>Webinar Objectives</h2>
        <p>This webinar will provide the attendee with:</p>
        <ul class="benefits">
            <li>An broad understanding of the SharePoint feature set</li>
            <li>An in depth understanding of how key features of SharePoint can enhance business processes</li>
            <li>An understanding of the costs, timelines, staff involvement and commitment a business will incur when implementing SharePoint</li>
            <li>This webinar is presented in layman terms which staff in all departments can understand.</li>
        </ul>
    </div>
    
    <div class="section">
        <h2><a name="outline"></a>Webinar Outline</h2>
        <ol>
            <li>Why should your business use SharePoint?</li>
            <li>Differences between the different SharePoint licenses</li>
            <li>An explanation of how common business scenarios are solved using the SharePoint feature set</li>
            <li>SharePoint in regards to implementation, costs and timelines</li>
            <li>SharePoint Development - What if I need more than SharePoint's out of the box functionality?</li>
        </ol>
    </div>

    <div class="section">
        <h2><a name="attend"></a>Who should attend?</h2>
        <p>Managers, decision makers, end users who want to know more about SharePoint from a business perspective to make a decision whether or not to implement SharePoint 2016 in their business.</p>
    </div>

    <div class="section">
        <h2><a name="when"></a>Webinar Details</h2>
        <table class="beautyTable">
          <tr class="odd">
            <td><strong>Date:</strong></td>
            <td>Call us for more information</td>     
          </tr>
          <tr>
            <td><strong>Time:</strong></td>
            <td>11:00am - 12:00pm</td>
          </tr>
          <tr class="odd">
            <td><strong>Cost:</strong></td>
            <td>No Charge</td>
          </tr>
          <tr>
            <td><strong>Presenter:</strong></td>
            <td>Marlon Marescia</td>
          </tr>
        </table> 
    </div>

    <div class="section">             
        <a name="Register"></a>
        <div class="download">
            <p><a class="red next ignore" href="https://www2.gotomeeting.com/island/webinar/registration.tmpl?id=372263145">Register</a></p>
            <p>or call Marlon on <strong>+61 2 9953 3000</strong>.</p>
        </div>
            
    </div>
             
</div>
 
</asp:Content>