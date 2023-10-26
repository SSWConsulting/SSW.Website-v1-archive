<%@ Page Language="C#" AutoEventWireup="false" Codebehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="Dev Superpowers – ASP.NET vNext with Ben Cull" %>
<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ContentPlaceHolderID="Slider" runat="server">
<img src="/ssw/events/webinars/images/DevSuperPowers-Banner-May_MVC.JPG" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="/ssw/NETUG/SSWUpdate/Images/DevSuperpowers-Thumb.png" alt="Dev Superpowers - ASP.NET vNext with Ben Cull" />
	<h1 style="font-size: 34px;">Dev Superpowers – ASP.NET Identity using vNext with Ben Cull</h1>
	<h2>Implement ASP.NET vNext User Membership using OWIN and Dependency injection</h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
	<h2>ASP.NET Identity using vNext </h2>
	<ul>
        <li><a href="http://tv.ssw.com/devsuperpowers">Dev Superpowers</a></li>
        <li><a href="#Details">Webinar Details</a></li>
	</ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
<div id="oversizeMaincontent">


<h2>Make the most of ASP.NET vNext with ASP.NET Identity 2, OWIN and Dependency Injection</h2>
	<div class="section"> 
		<p>Previous versions of ASP.NET Membership have left a bad taste in many developers mouths, and some are now dangerously out of date. 
            Watch Ben Cull take you through the latest, greatest and safest way to get your membership system up and running using ASP.NET Identity, 
            OWIN and Dependency Injection.</p>
        
        <p><b>Note:</b> this event was due to run in April but has been postponed to May - check your timezone listing for new date. </p>
    </div>

  <div class="section">
		<h2><a name="Details"></a>Webinar Details</h2>
     <table class="beautyTable">
  <tbody>
    <tr>
      <td>Date &amp; Time:</td>
<td><strong>USA</strong></td>
      <td>Wednesday 27th of May - 4:00 PM to 5:00 PM EDT</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Europe</strong></td>
      <td>Thursday 28th of May - 11:00 AM - 12:00 PM CET</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Australia</strong></td>
      <td>Thursday 28th of May - 11:00 AM - 12:00 PM AEST </td>
    </tr>
    <tr>
      <td>Cost: </td>
      <td>No Charge </td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Presenter: </td>
      <td>Ben Cull</td>
      <td>&nbsp;</td>
    </tr>
  </tbody>
</table>
	 </div>

                        <table width="100%" border="0" cellspacing="10" cellpadding="0">
                                <tr>
                                    <td width="33%"  valign="middle" style="text-align: center;">
                                        <p>
                                        <a href="https://www.eventbrite.com.au/e/dev-superpowers-aspnet-identity-using-vnext-usa-tickets-15826215637" style="border:none;text-decoration:none;" target="_blank">
                                            <img src="/ssw/events/webinars/images/usa.png" alt="Register for USA" border="0" />
                                        </a><br />    
                                        <a href="https://www.eventbrite.com.au/e/dev-superpowers-aspnet-identity-using-vnext-usa-tickets-15826215637" target="_blank">
                                            <img src="/ssw/NETUG/SSWUpdate/Images/register.png" alt="Register for USA" border="0" />
                                            </a>
                                        </p>
                                    </td>

                                    <td width="33%"  valign="middle" style="text-align: center;">
                                        <p>
                                        <a href="https://www.eventbrite.com.au/e/dev-superpowers-aspnet-identity-using-vnext-europe-tickets-15826280832" style="border:none;text-decoration:none;" target="_blank">
                                            <img src="/ssw/events/webinars/images/europe.png" alt="Register for Europe" border="0" />
                                        </a><br />    
                                        <a href="https://www.eventbrite.com.au/e/dev-superpowers-aspnet-identity-using-vnext-europe-tickets-15826280832" target="_blank">
                                            <img src="/ssw/NETUG/SSWUpdate/Images/register.png" alt="Register for Europe" border="0" />
                                            </a>
                                        </p>
                                    </td>
                                    
                                    <td width="33%" valign="middle" style="text-align: center;">
                                            <p>
                                            <a href="https://www.eventbrite.com.au/e/dev-superpowers-aspnet-identity-using-vnext-australia-tickets-15826552645" style="border:none;text-decoration:none;" target="_blank">
                                                <img src="/ssw/events/webinars/images/Au.png" alt="Register for Australia"  border="0" />
                                            </a><br />
                                            <a href="https://www.eventbrite.com.au/e/dev-superpowers-aspnet-identity-using-vnext-australia-tickets-15826552645" target="_blank">
                                                <img src="/ssw/NETUG/SSWUpdate/Images/register.png" alt="Register for Australia" border="0" />
                                            </a>
                                        </p>
                                    </td>
                                </tr>
                            </table>
            	
</asp:Content>


<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
    <div class="section">
        <h3>
            About the presenter</h3>
        <p>
            <img src="Images/ben-cull.jpg" class="thumbnail" />
            <strong>Ben Cull</strong><br />
            Ben Cull is a Software Architect for <a href="http://ssw.com.au" target="_blank">http://ssw.com.au</a>.</p> 
            <p>When he's not coding a million start-up ideas like
            <a href="http://eventdebit.com" target="_blank">http://eventdebit.com</a>, or babbling on his blog over at <a href="http://benjii.me" target="_blank">http://benjii.me</a>,
             you can find him brewing more beer than he can drink.</p>
    </div>

</asp:Content>