<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="ContentManagement.aspx.cs" MasterPageFile="~/Masters/RavenSubPage.master" Title="Dev Superpowers - AngularJS and ASP.NET MVC" %>

<%@ Register TagPrefix="SSW" TagName="InfoBox" Src="~/Components/InfoBoxLink.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ContentPlaceHolderID="Slider" runat="server">
    <img src="/ssw/events/webinars/images/DevSuperPowers-AngularJS.jpg" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <img class="icon" src="/ssw/NETUG/SSWUpdate/Images/DevSuperpowers-Thumb.png" alt="Dev Superpowers - AngularJS and ASP.NET MVC with Ben Cull" />
    <h1 style="font-size: 34px;">Dev Superpowers - AngularJS with Ben Cull</h1>
    <h2>Create impressively dynamic interfaces
    </h2>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="index" runat="server">
    <h2>AngularJS and ASP.NET MVC:</h2>
    <ul>
        <li><a href="http://tv.ssw.com/devsuperpowers">Dev Superpowers</a></li>
        <li><a href="#Details">Webinar Details</a></li>
        <li><a href="#Register">Register</a></li>
    </ul>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <div id="oversizeMaincontent">

        <div class="section">
            <h2>Combine AngularJS and ASP.NET MVC for next generation web applications</h2>
            <p>
                Watch Ben Cull write some code as he transforms a rigid MVC web application into a dynamic pleasure using AngularJS.
            </p>

            <p>
                AngularJS is a client-side javascript framework that enables the creation of impressively dynamic user interfaces. It strives to remove the tedium of manipulating DOM elements by abstracting many common functions such as showing/hiding, updating content and injecting/removing elements.
            </p>

        </div>

        <div class="section">
            <h2><a name="Details"></a>Video</h2>
            <div class="eric-video">
                <div class="video-player" data-id="vwF1mxZH_hE" data-youkuid=""></div>
            </div>
            <%--<iframe width="560" height="315" src="//www.youtube.com/embed/vwF1mxZH_hE?rel=0" frameborder="0" allowfullscreen></iframe>--%>
        </div>

        <%--<div class="section">
		<h2><a name="Details"></a>Webinar Details</h2>

     <table class="beautyTable">
  <tbody>
    <tr>
      <td>Date &amp; Time:</td>
<td><strong>USA</strong></td>
      <td>Wednesday 26th of November - 4:00 PM to 5:00 PM EST</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Europe</strong></td>
      <td>Thursday 27th of November - 11:00 AM - 12:00 PM CET</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><strong>Australia<strong</td>
      <td>Thursday 27th of November - 11:00 AM - 12:00 PM AEDT </td>
    </tr>
    <tr>
      <td>Cost: </td>
      <td>No Charge </td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Presenter: </td>
      <td>Ben Cull </td>
      <td>&nbsp;</td>
    </tr>
  </tbody>
</table>
	 </div>

                        <table width="100%" border="0" cellspacing="10" cellpadding="0">
                                <tr>
                                    <td width="33%"  valign="middle" style="text-align: center;">
                                        <p>
                                        <a href="https://www.eventbrite.com.au/e/dev-superpowers-angularjs-create-impressively-dynamic-interfaces-usa-tickets-14132445525?ref=etckt" style="border:none;text-decoration:none;" target="_blank">
                                            <img src="/ssw/events/webinars/images/usa.png" alt="Register for USA" border="0" />
                                        </a><br />    
                                        <a href="https://www.eventbrite.com.au/e/dev-superpowers-angularjs-create-impressively-dynamic-interfaces-europe-tickets-14132379327?ref=etckt" target="_blank">
                                            <img src="/ssw/NETUG/SSWUpdate/Images/register.png" alt="Register for USA" border="0" />
                                            </a>
                                        </p>
                                    </td>

                                    <td width="33%"  valign="middle" style="text-align: center;">
                                        <p>
                                        <a href="https://www.eventbrite.com.au/e/dev-superpowers-angularjs-create-impressively-dynamic-interfaces-europe-tickets-14132379327?ref=etckt" style="border:none;text-decoration:none;" target="_blank">
                                            <img src="/ssw/events/webinars/images/europe.png" alt="Register for Europe" border="0" />
                                        </a><br />    
                                        <a href="https://www.eventbrite.com.au/e/dev-superpowers-angularjs-create-impressively-dynamic-interfaces-europe-tickets-14132379327?ref=etckt" target="_blank">
                                            <img src="/ssw/NETUG/SSWUpdate/Images/register.png" alt="Register for Europe" border="0" />
                                            </a>
                                        </p>
                                    </td>
                                    
                                    <td width="33%" valign="middle" style="text-align: center;">
                                            <p>
                                            <a href="http://www.eventbrite.com.au/e/dev-superpowers-angularjs-create-impressively-dynamic-interfaces-australia-tickets-12200645459" style="border:none;text-decoration:none;" target="_blank">
                                                <img src="/ssw/events/webinars/images/Au.png" alt="Register for Australia"  />
                                            </a><br />
                                            <a href="http://www.eventbrite.com.au/e/dev-superpowers-angularjs-create-impressively-dynamic-interfaces-australia-tickets-12200645459" target="_blank">
                                                <img src="/ssw/NETUG/SSWUpdate/Images/register.png" alt="Register for Australia"  />
                                            </a>
                                        </p>
                                    </td>
                                </tr>
                            </table>--%>



        <%--    <h2><a name="Register"></a>Register for the AEDT (Australian Eastern Daylight Time) airing</h2>
<div style="width:100%; text-align:left;" ><iframe  src="//eventbrite.com.au/tickets-external?eid=12200645459&ref=etckt" frameborder="0" height="214" width="100%" vspace="0" hspace="0" marginheight="5" marginwidth="5" scrolling="auto" allowtransparency="true"></iframe>

</div>
    </div>

        		
    <h2><a name="Register"></a>Register for the CET (Central European Time) airing</h2>
    <div style="width:100%; text-align:left;" ><iframe  src="//eventbrite.com.au/tickets-external?eid=14132379327&ref=etckt" frameborder="0" height="214" width="100%" vspace="0" hspace="0" marginheight="5" marginwidth="5" scrolling="auto" allowtransparency="true"></iframe> <span style="color:#000000;">Powered by </span> <a style="color:#000000; text-decoration:none;" target="_blank" href="http://www.eventbrite.com.au?ref=etckt">Eventbrite</a>

    </div>--%>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="sidebar" runat="server">
    <div class="section">
        <h3>About the presenter</h3>
        <p>
            <img src="Images/ben-cull.jpg" class="thumbnail" />
            <strong>Ben Cull</strong><br />
            Ben Cull is a Software Architect for <a href="http://ssw.com.au" target="_blank">http://ssw.com.au</a>.
        </p>
        <p>
            When he's not coding a million start-up ideas like
            <a href="http://eventdebit.com" target="_blank">http://eventdebit.com</a>, or babbling on his blog over at <a href="http://benjii.me" target="_blank">http://benjii.me</a>,
             you can find him brewing more beer than he can drink.
        </p>
    </div>
</asp:Content>
