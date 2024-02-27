<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="SSW's Top 8 ways to speed up your SQL Server database" %>

<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="Images/thumbs/webinar-thumb.jpg" alt="SQL Server" />
    <h1>Top 8 ways to speed up your database</h1>
    <h2>How to improve the performance of your SQL Server Database</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>Top 8 ways to speed up your database:</h2>
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
            <p>Are your users starting a report and going for a coffee or a smoke while they wait? Are your users constantly complaining about timeouts when using your application?</p>
            <p>If you find yourself with a sluggish database, stop pulling your hair out! In this webinar SSW will show you the top 8 methods we use to reduce the time it takes to run queries from minutes or hours to seconds.</p>
        </div>
        <div class="eric-video">
            <div class="video-player" data-id="fnLk-I2Xl1I" data-youkuid=""></div>
        </div>
        <%--<iframe width="682" height="387" src="//www.youtube.com/embed/fnLk-I2Xl1I?rel=0" frameborder="0" allowfullscreen></iframe>--%>

        <div class="section">
            <h2><a name="objectives"></a>Webinar Objectives</h2>
            <p>This webinar will provide the attendee with:</p>
            <ul class="benefits">
                <li>An understanding of the major contributors to poor SQL Server performance</li>
                <li>The key ways to overcome these challenges</li>
            </ul>
        </div>

        <div class="section">
            <h2><a name="outline"></a>Webinar Outline</h2>
            <ol>
                <li>Top 8 ways to improve the performance of your SQL Server Database</li>
                <li>How to prevent performance issues from occurring</li>
                <li>How to resolve these issues after it goes into production</li>
                <li>How write code that ensures your SQL server remains healthy</li>
                <li>Steps an administrator can take to return your SQL server to optimal health</li>
                <li>Question and Answer time</li>
            </ol>
        </div>

        <div class="section">
            <h2><a name="attend"></a>Who should attend?</h2>
            <p>Software developers, SQL Server Admins, IT managers.</p>
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
                    <td>11AM - 12PM</td>
                </tr>
                <tr class="odd">
                    <td>Cost:</td>
                    <td>No Charge</td>
                </tr>
            </table>
        </div>

        <a name="Register"></a>
        <div class="download">
            <a class="green next" href="https://www3.gotomeeting.com/register/306074094">Register</a><br />
            <p>or call Marlon on <b>(02) 9953 3000</b>.</p>
        </div>

    </div>
</asp:Content>
