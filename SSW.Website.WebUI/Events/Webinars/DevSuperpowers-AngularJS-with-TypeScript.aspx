<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="Dev Superpowers - AngularJS with TypeScript made easy with Duncan Hunter" %>

<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ContentPlaceHolderID="Slider" runat="server">
    <img src="/ssw/Events/Webinars/images/DevSuperPowers-AngularJS-with-TypeScript.png" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="/ssw/NETUG/SSWUpdate/Images/DevSuperpowers-Thumb.png" alt="Dev Superpowers - AngularJS with TypeScript made easy with Duncan Hunter" />
    <h1 style="font-size: 34px;">Dev Superpowers - AngularJS with TypeScript made easy with Duncan Hunter</h1>
    <h2>Learn how to harness the power of TypeScript in your AngularJS projects 
    </h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>AngularJS with TypeScript:</h2>
    <ul>
        <li><a href="http://tv.ssw.com/devsuperpowers">Dev Superpowers</a></li>
        <li><a href="#Details">Webinar Details</a></li>
        <li><a href="#Register">Register</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <div id="oversizeMaincontent">

        <div class="section">
            <%--        <h2>Combine AngularJS and TypeScript for next generation web applications</h2>--%>

            <p>
                Learn how to harness the power of Typescript in your AngularJS projects. 
            Setting up TypeScript with AngularJS for the first time can be challenging but in this session we make using this fantastic duo a piece of cake.
            </p>

            <p>In this session we will discuss how to:</p>
            <ul>
                <li>Use TypeScript to create AngularJS controllers, modules and factories</li>
                <li>Communicate with Web API services from TypeScript using AngularJS</li>
                <li>Use Definitely Typed Definitions for AngularJS objects to get the benefit of code completion</li>
                <li>And more...</li>
            </ul>

        </div>
        <div class="section">
            <h2><a name="Details"></a>Video</h2>
            <div class="eric-video">
                <div class="video-player" data-id="OZxnFB0yQHs" data-youkuid=""></div>
            </div>
            <%--<iframe width="560" height="315" src="//www.youtube.com/embed/OZxnFB0yQHs?rel=0" frameborder="0" allowfullscreen></iframe>--%>

            <h3>Looking for the source code?</h3>
            <p>Get it from here: <a href="https://github.com/duncanhunter/AngularJS-TypeScript-DevSuperPowers" target="_blank">https://github.com/duncanhunter/AngularJS-TypeScript-DevSuperPowers</a></p>
        </div>

        <%--	<div class="section">
		<h2><a name="Details"></a>Webinar Details</h2>

     <table class="beautyTable">
  <tbody>
    <tr>
      <td>Date &amp; Time:</td>
<td><strong>USA</strong></td>
      <td>Wednesday 25th of February - 4:00 PM to 5:00 PM EST</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Europe</strong></td>
      <td>Thursday 26th of February - 11:00 AM - 12:00 PM CET</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Australia</strong></td>
      <td>Thursday 26th of February - 11:00 AM - 12:00 PM AEDT </td>
    </tr>
    <tr>
      <td>Cost: </td>
      <td>No Charge </td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Presenter: </td>
      <td>Duncan Hunter</td>
      <td>&nbsp;</td>
    </tr>
  </tbody>
</table>

                 <table width="100%" border="0" cellspacing="10" cellpadding="0">
                                <tr>
                                    <td width="33%"  valign="middle" style="text-align: center;">
                                        <p>
                                        <a href="http://www.eventbrite.com.au/e/dev-superpowers-angularjs-with-typescript-made-easy-with-duncan-hunter-tickets-15464838749" style="border:none;text-decoration:none;" target="_blank">
                                            <img src="/ssw/events/webinars/images/usa.png" alt="Register for USA" border="0" />
                                        </a><br />    
                                        <a href="http://www.eventbrite.com.au/e/dev-superpowers-angularjs-with-typescript-made-easy-with-duncan-hunter-tickets-15464838749" target="_blank">
                                            <img src="/ssw/NETUG/SSWUpdate/Images/register.png" alt="Register for USA" border="0" />
                                            </a>
                                        </p>
                                    </td>

                                    <td width="33%"  valign="middle" style="text-align: center;">
                                        <p>
                                        <a href="https://www.eventbrite.com.au/e/dev-superpowers-europe-angularjs-with-typescript-made-easy-tickets-15529516201" style="border:none;text-decoration:none;" target="_blank">
                                            <img src="/ssw/events/webinars/images/europe.png" alt="Register for Europe" border="0" />
                                        </a><br />    
                                        <a href="https://www.eventbrite.com.au/e/dev-superpowers-europe-angularjs-with-typescript-made-easy-tickets-15529516201" target="_blank">
                                            <img src="/ssw/NETUG/SSWUpdate/Images/register.png" alt="Register for Europe" border="0" />
                                            </a>
                                        </p>
                                    </td>
                                    
                                    <td width="33%" valign="middle" style="text-align: center;">
                                            <p>
                                            <a href="https://www.eventbrite.com.au/e/dev-superpowers-angularjs-with-typescript-made-easy-australia-tickets-15529640573" style="border:none;text-decoration:none;" target="_blank">
                                                <img src="/ssw/events/webinars/images/Au.png" alt="Register for Australia"  border="0" />
                                            </a><br />
                                            <a href="https://www.eventbrite.com.au/e/dev-superpowers-angularjs-with-typescript-made-easy-australia-tickets-15529640573" target="_blank">
                                                <img src="/ssw/NETUG/SSWUpdate/Images/register.png" alt="Register for Australia" border="0" />
                                            </a>
                                        </p>
                                    </td>
                                </tr>
                            </table>	 
    </div>--%>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
    <div class="section">
        <h3>About the presenter</h3>
        <p>
            <img src="Images/DuncanHunter.jpg" class="thumbnail" height="65" />
            <strong>Duncan Hunter</strong><br />
            Duncan Hunter loves working in passionate teams to make awesome software. Making sustainable software that solves real world issues is what makes Duncan tick. He is a full stack developer using Azure, AngularJS, TypeScript, ASP.NET and BreezeJS. He lives and works in Sydney making software for the Nutrition Industry and is the founder of foodzone.com.au and nutritionexperts.com.au.
        </p>
    </div>
</asp:Content>
