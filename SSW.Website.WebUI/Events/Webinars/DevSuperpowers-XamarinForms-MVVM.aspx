<%@ Page Language="C#" AutoEventWireup="false" Codebehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="Dev Superpowers - Xamarin.Forms & MVVM" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ContentPlaceHolderID="Slider" runat="server">
<img src="/ssw/events/webinars/images/DevSuperPowers-XamarinForms-MVVM.png" alt="Dev Superpowers - Xamarin.Forms & MVVM with David Burela" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="/ssw/NETUG/SSWUpdate/Images/DevSuperpowers-Thumb.png" alt="Dev Superpowers - Xamarin.Forms & MVVM with David Burela" />
	<h1 style="font-size: 34px;">Dev Superpowers - Xamarin.Forms & MVVM</h1>
	<h2>Implementing MVVM from first principals with Xamarin.Forms</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
	<h2>Xamarin.Forms & MVVM:</h2>
	<ul>
        <li><a href="http://tv.ssw.com/devsuperpowers">Dev Superpowers</a></li>
        <li><a href="#Details">Details</a></li>
		<li><a href="#Register">Register</a></li>
	</ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
<div id="oversizeMaincontent">

	<div class="section"> 
		<p>In this presentation David Burela will show how you can combine the cross platform native UI capabilities of Xamarin.Forms with the clean structuring of MVVM 
            (Model, View, ViewModel). You will learn the very basics of what MVVM is and be taken through how implement it into your mobile application.</p> 
            
        <p>David will start by building an app with standard event handlers on buttons, then take it through the evolution of implementing MVVM into the application 
            from scratch, with explanations throughout on the benefits you are getting at each step.</p>

        <p>Xamarin.Forms will be demonstrated to show how you can define your UI once, and have your app have a native look and feel on all devices automatically.</p>

    </div>
    </div>
<%--	<div class="section">
		<h2><a name="Details"></a>Webinar Details</h2>
     <table class="beautyTable">
  <tbody>
    <tr>
      <td>Date &amp; Time:</td>
<td><strong>USA</strong></td>
      <td>Wednesday 25th of March - 4:00 PM to 5:00 PM EST</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Europe</strong></td>
      <td>Thursday 26th of March - 11:00 AM - 12:00 PM CET</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Australia</strong></td>
      <td>Thursday 26th of March - 11:00 AM - 12:00 PM AEDT </td>
    </tr>
    <tr>
      <td>Cost: </td>
      <td>No Charge </td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Presenter: </td>
      <td>David Burela</td>
      <td>&nbsp;</td>
    </tr>
  </tbody>
</table>
	 </div>

                        <table width="100%" border="0" cellspacing="10" cellpadding="0">
                                <tr>
                                    <td width="33%"  valign="middle" style="text-align: center;">
                                        <p>
                                        <a href="https://www.eventbrite.com.au/e/dev-superpowers-xamarinforms-mvvm-usa-tickets-15546563189" style="border:none;text-decoration:none;" target="_blank">
                                            <img src="/ssw/events/webinars/images/usa.png" alt="Register for USA" border="0" />
                                        </a><br />    
                                        <a href="https://www.eventbrite.com.au/e/dev-superpowers-xamarinforms-mvvm-usa-tickets-15546563189" target="_blank">
                                            <img src="/ssw/NETUG/SSWUpdate/Images/register.png" alt="Register for USA" border="0" />
                                            </a>
                                        </p>
                                    </td>

                                    <td width="33%"  valign="middle" style="text-align: center;">
                                        <p>
                                        <a href="https://www.eventbrite.com.au/e/dev-superpowers-xamarinforms-mvvm-europe-tickets-15546655465" style="border:none;text-decoration:none;" target="_blank">
                                            <img src="/ssw/events/webinars/images/europe.png" alt="Register for Europe" border="0" />
                                        </a><br />    
                                        <a href="https://www.eventbrite.com.au/e/dev-superpowers-xamarinforms-mvvm-europe-tickets-15546655465" target="_blank">
                                            <img src="/ssw/NETUG/SSWUpdate/Images/register.png" alt="Register for Europe" border="0" />
                                            </a>
                                        </p>
                                    </td>
                                    
                                    <td width="33%" valign="middle" style="text-align: center;">
                                            <p>
                                            <a href="https://www.eventbrite.com.au/e/dev-superpowers-xamarinforms-mvvm-australia-tickets-15548676510" style="border:none;text-decoration:none;" target="_blank">
                                                <img src="/ssw/events/webinars/images/Au.png" alt="Register for Australia"  border="0" />
                                            </a><br />
                                            <a href="https://www.eventbrite.com.au/e/dev-superpowers-xamarinforms-mvvm-australia-tickets-15548676510" target="_blank">
                                                <img src="/ssw/NETUG/SSWUpdate/Images/register.png" alt="Register for Australia" border="0" />
                                            </a>
                                        </p>
                                    </td>
                                </tr>
                            </table>--%>
            	
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
    <div class="section">
        <h3>
            About the presenter</h3>
        <p>
            <img src="Images/burelaMVP.png" class="thumbnail" />
            <strong>David Burela</strong><br />
            David Burela is a Microsoft Azure MVP and works as Solution Architect & State Manager for SSW Melbourne.
            He specialises in cloud development & smart client applications. He regularly speaks at user groups and conferences like TechEd Australia.
            Technology learning is a passion, and he just wants to spread knowledge to everyone in the developer community.</p>
        <p>David blogs about his latest adventures in coding at <a href="http://davidburela.wordpress.com/">http://davidburela.wordpress.com/</a></p>
    </div>
</asp:Content>