<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="SSW ASP.NET MVC Webinar (Part 1)" %>

<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="Images/thumbs/webinar-thumb.jpg" alt="ASP.NET MVC" />
    <h1>SSW ASP.NET MVC Webinar (Part 1)</h1>
    <h2>What's all the fuss?</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>ASP.NET MVC Webinar:</h2>
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
            <p>Microsoft developers are swarming to ASP.NET MVC - the next big web development platform.  The last big change in the web space was the move from classic ASP to ASP.NET Web Forms and this was a big driver in the adoption of the Microsoft web platform.</p>
            <img src="Images/NET-wrong-way.jpg" alt="ASP.NET logo" class="right" />
            <p>In this webinar, find out what all the fuss about ASP.NET MVC is; why developers love it; and why businesses should pick ASP.NET MVC over ASP.NET Web Forms.</p>
            <p>Join SSW's Eric Phan as he discusses Microsoft's next big web platform and his experiences with it on real world projects. There will be lots of time for live questions.</p>
        </div>
        <div class="eric-video">
            <div class="video-player" data-id="q3OBkzwTQNw" data-youkuid=""></div>
        </div>
        <%--<iframe width="682" height="387" src="//www.youtube.com/embed/q3OBkzwTQNw?rel=0" frameborder="0" allowfullscreen></iframe>--%>

        <div class="scrum-greybox">
            <p>
                Want a serious all day course instead?<br />
                Attend the "Enterprise MVC Apps" course (on premise, online or custom):
            </p>
            <ul>
                <li><a href="http://www.ssw.com.au/ssw/events/Training/enterprise-MVC-Day-1.aspx">Day I</a></li>
                <li><a href="http://www.ssw.com.au/ssw/events/Training/enterprise-MVC-Day-2.aspx">Day II</a></li>
                <li><a href="http://www.ssw.com.au/ssw/events/Training/enterprise-MVC-Day-3.aspx">Day III</a></li>
                <li><a href="http://www.ssw.com.au/ssw/events/Training/enterprise-MVC-Day-4.aspx">Day IV</a></li>
            </ul>
        </div>

        <div class="section">
            <h2><a name="objectives"></a>Webinar Objectives</h2>
            <p>This webinar will provide the attendee with:</p>
            <ul class="benefits">
                <li>An overview of what MVC is</li>
                <li>The good and the bad of MVC</li>
                <li>Ways of assessing whether ASP.NET Web Forms or MVC is right for your business</li>
                <li>Ample time to ask questions from the presenter</li>
            </ul>
        </div>

        <div class="section">
            <h2><a name="attend"></a>Who should attend?</h2>
            <p>Managers, decision makers and developers who want to know more about ASP.NET MVC and why they should use it on their next project.</p>
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
                    <td>Eric Phan, SSW Solution Architect</td>
                </tr>
            </table>
        </div>

        <a name="Register"></a>
        <div class="download">
            <a class="green next" href="https://www2.gotomeeting.com/island/webinar/registration.tmpl?id=745230833">Register</a><br />
            <p>or call Marlon on <strong>+61 2 9953 3000</strong>.</p>
        </div>

    </div>
</asp:Content>
