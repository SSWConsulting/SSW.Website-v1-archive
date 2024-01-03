<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="SSW Windows Azure Webinar" %>

<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="Images/thumbs/webinar-thumb.jpg" alt="ASP.NET MVC" />
    <h1>SSW Windows Azure Webinar</h1>
    <h2>What you need to know about moving your Apps</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>SSW Windows Azure Webinar:</h2>
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
            <p>More and more companies are moving their infrastructure to the cloud. Driven by the low costs in terms of hardware, bandwidth and the promised reduction in support staff to maintain the infrastructure. So is moving to the cloud the right decision for your business?</p>
            <img src="Images/Azure-Logo_Small.jpg" alt="Windows Azure logo" class="right" />
            <p>Microsoft Australia’s Andrew Coates as he discusses the benefits (and some of the pitfalls) of adopting the cloud as your platform. There will be lots of time for live questions.</p>
        </div>
        <div class="eric-video">
            <div class="video-player" data-id="fYUY9kScdUOQ" data-youkuid=""></div>
        </div>
        <%--<iframe width="682" height="387" src="//www.youtube.com/embed/YUY9kScdUOQ?rel=0" frameborder="0" allowfullscreen></iframe>--%>

        <div class="section">
            <h2><a name="objectives"></a>Webinar Objectives</h2>
            <p>This webinar will provide the attendee with:</p>
            <ul class="benefits">
                <li>A brief lap around the cloud options available to businesses</li>
                <li>An understanding of the benefits of moving your app to Windows Azure</li>
                <li>Ways of assessing whether moving to or adopting the cloud might be a good decision</li>
                <li>An understanding of the steps required for converting your applications to Windows Azure </li>
                <li>Ample time to ask questions from the presenter</li>
            </ul>
        </div>

        <div class="section">
            <h2><a name="attend"></a>Who should attend?</h2>
            <p>Managers, decision makers, end users who want to know more about Windows Azure.</p>
        </div>

        <div class="section">
            <h2><a name="when"></a>Webinar Details</h2>
            <table class="beautyTable">
                <tr class="odd">
                    <td>Date:</td>
                    <td>Call us for more information</td>
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
                    <td>Andrew Coates, Microsoft Developer Evangelist</td>
                </tr>
            </table>
        </div>

        <a name="Register"></a>
        <div class="download">
            <a class="green next" href="https://www1.gotomeeting.com/register/211138864">Register</a><br />
            <p>or call Marlon on <b>(02) 9953 3000</b>.</p>
        </div>

    </div>
</asp:Content>
